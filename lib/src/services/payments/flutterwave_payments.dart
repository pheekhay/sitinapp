import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:sitinapp/src/models/payment_model.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterwavePaymentGateway {
  final _userRepo = UserDatabaseService();
  final _restaurantRepo = RestuarantDatabaseService();
  Future<PaymentStatus> makePayment(Reservation reservation, BuildContext context) async {
    var channel = JavascriptChannel(
      name: 'App',
      onMessageReceived: (message) async {
        var result = (const JsonDecoder().convert(message.message)) as Map<String, dynamic>;
        var statusString = (result['status']) as String?;
        await Future.delayed(const Duration(seconds: 2));
        Navigator.of(context).pop(statusString);
      },
    );

    var customer = await _userRepo.getUser(reservation.customerId);
    var restaurant = await _restaurantRepo.getRestaurant(reservation.restaurantId);
    var html = '''<form>
  <script src="https://checkout.flutterwave.com/v3.js"></script>
  // <button type="button" onClick="makePayment()">Pay Now</button>
</form>

<script>

  function makePayment() {
    
    FlutterwaveCheckout({
      tx_ref: "${reservation.id}",
      amount: "${1}",
      public_key: "FLWPUBK_TEST-f6a44cc2c6cd063ff39f3305062e2ea8-X",
      currency: "GHS",
      payment_options: "mobilemoneyghana",
      customer: {
      email: 'shane.qoubby@gmail.com',
      phonenumber: '${customer.phoneNumber}',
      'name': '${customer.name?.split(" ").first} ${customer.name?.split(" ").last}'
      },
      callback: function (data) { 
        App.postMessage(JSON.stringify(data));
      },
      customizations: {
        title: "${restaurant?.name} Reservation Payment",
        description: "Pay For Reservation",
        logo:"assets/images/logo.jpeg"
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

  const PaymentScreen(
    this.url,
    this.channels, [
    Key? key,
  ]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Payment'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        javascriptChannels: channels,

        // persistentFooterButtons: <Widget>[
        //   ElevatedButton(
        //     child: Text(
        //       'Cancel',
        //       style: SitInTheme.lightTextTheme.headline5,
        //     ),
        //     onPressed: () => Navigator.of(context).pop(),
        //   )
        // ],
      ),
    );
  }
}
