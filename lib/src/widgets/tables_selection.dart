import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sizer/sizer.dart';

class TableSelectionWidget extends StatefulWidget {
  TableSelectionWidget({
    Key? key,
  }) : super(key: key);
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<TableSelectionWidget> {
  List<bool> checks = [];
  List<SitTable> tables = [];
  @override
  void initState() {
    for (var index in tables) {
      checks.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center + const Alignment(0, -0.85),
              child: Text(
                'Tables',
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).cardColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              alignment: Alignment.center + const Alignment(0, -0.65),
              child: Text(
                'Select your preferred number of seats',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).cardColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
                top: 25.h,
                child: ListView.builder(
                    itemCount: tables.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value: checks[index],
                            checkColor: Theme.of(context).focusColor,
                            onChanged: (value) {
                              setState(() {
                                checks[index] = !checks[index];
                                if (checks[index]) {
                                  tables[index].isReserved;
                                }
                              });
                            },
                          ),
                          Text(
                            'Comedy',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ],
                      );
                    })),
            Align(
              alignment: Alignment.center + const Alignment(0, 0.75),
              child: ElevatedButton(
                child: Text(
                  'Book Now',
                  style: SitInTheme.lightTextTheme.headline3,
                ),
                onPressed: () {
                  //TODO:FINAL BOOKING STAGE
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
