import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:sitinapp/src/models/payment_model.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';
import 'package:sitinapp/src/theme.dart';

class FlutterwavePaymentGateway {
  final _userRepo = UserDatabaseService();
  final _restaurantRepo = RestuarantDatabaseService();
  Future<PaymentStatus> makePayment(
      Reservation reservation, BuildContext context) async {
    var channel = JavascriptChannel(
      name: 'App',
      onMessageReceived: (message) async {
        var result = (const JsonDecoder().convert(message.message))
            as Map<String, dynamic>;
        var statusString = (result['status']) as String?;
        await Future.delayed(const Duration(seconds: 2));
        Navigator.of(context).pop(statusString);
      },
    );

    var customer = await _userRepo.getUser(reservation.customerId);
    var restaurant =
        await _restaurantRepo.getRestaurant(reservation.restaurantId);
    var html = '''<form>
  <script src="https://checkout.flutterwave.com/v3.js"></script>
 
</form>

<script>

  function makePayment() {
    
    FlutterwaveCheckout({
      tx_ref: "${reservation.id}",
      amount: "${reservation.price}",
      public_key: "FLWPUBK_TEST-c077fce88e67d5eb4bdd50561d50b644-X",
      currency: "GHS",
      payment_options: "card,mobilemoneyghana",
       'customer': {
      'email': '',
      'phonenumber': '${customer.phoneNumber}',
      'name': '${customer.name?.split(" ").first} ${customer.name?.split(" ").last}'
      },
      callback: function (data) { 
        App.postMessage(JSON.stringify(data));
      },
      customizations: {
        title: "${restaurant?.name} Reservation Payment",
        description: "Pay For Reservation",
      },
    });
  }

  makePayment();

 
</script>''';

    var url = Uri.dataFromString(
      html,
      mimeType: 'text/html',
    ).toString();

    var result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PaymentScreen(url, {channel}),
    ));

    if (result == null) {
      return PaymentStatus.CANCELLED;
    } else if (result == 'successful') {
      return PaymentStatus.SUCCESS;
    } else {
      return PaymentStatus.FAIL;
    }
  }
}

class PaymentScreen extends StatelessWidget {
  final String url;
  final Set<JavascriptChannel> channels;

  const PaymentScreen(this.url, this.channels);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true,
      javascriptChannels: channels,
      appBar: AppBar(
        title: const Text('Reservation Payment'),
      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          child: Text(
            'Cancel',
            style: SitInTheme.lightTextTheme.headline5,
          ),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}
