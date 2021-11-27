import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/theme.dart';

class ReservedSheetView extends StatelessWidget {
  const ReservedSheetView({Key? key, required this.name, required this.date}) : super(key: key);
  static const String routeName = "reserved";
  final DateTime date;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset("assets/images/man.svg"),
          const SizedBox(
            height: 20,
          ),
          Text("$name has  been\n book for you."),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text(
                formatDate(DateTime.now(), [
                  HH,
                  ':',
                  nn,
                ]),
                style: SitInTheme.lightTextTheme.headline6,
              ),
              const Divider(
                thickness: 15,
              ),
              Text(TimeOfDay.fromDateTime(DateTime.now()).format(context)),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
