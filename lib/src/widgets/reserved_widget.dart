import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/theme.dart';

class ReservedView extends StatelessWidget {
  const ReservedView({Key? key}) : super(key: key);
  static const String routeName = "reserved";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assetName"),
          Text("restaurantName has  been\n book for you."),
          Row(
            children: [
              Text(TimeOfDay.fromDateTime(DateTime.now()).format(context)),
              Divider(
                thickness: 15,
              ),
              Text(
                formatDate(DateTime.now(), [
                  HH,
                  ':',
                  nn,
                ]),
                style: SitInTheme.lightTextTheme.headline6,
              )
            ],
          )
        ],
      ),
    );
  }
}
