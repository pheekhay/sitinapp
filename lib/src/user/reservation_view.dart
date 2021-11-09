import 'dart:developer';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sizer/sizer.dart';

class ReservationsView extends StatelessWidget {
  static const String routeName = "/reservations";

  const ReservationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My reservations",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          Builder(builder: (context) {
            return Container(
              // color: Colors.amber,
              height: 78.h,
              child: ListView.separated(
                itemBuilder: (context, i) {
                  return Card(
                    margin: const EdgeInsets.all(1),
                    child: Row(
                      children: [
                        //image
                        Container(
                          height: 8.h,
                          width: 14.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.iloveqatar.net/public/images/local/open-restaurent-2.jpeg"),
                                fit: BoxFit.cover,
                                onError: (err, trace) {
                                  log(trace.toString() + err.toString());
                                }),
                          ),
                        ),
                        SizedBox(
                          // color: Colors.amber,
                          width: 75.w,
                          height: 10.h,
                          child: ListTile(
                            selectedTileColor: Colors.green[400],
                            onTap: () {
                              //TODO:SEND TO RESERVATION PAGE
                            },
                            title: Text(
                              formatDate(
                                DateTime.now(),
                                [dd, " ", M, ",", yyyy, " ", HH, ":", nn],
                              ),
                              style: GoogleFonts.openSans(
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Potbelly Shack",
                                  style: SitInTheme.lightTextTheme.headline3,
                                ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  i == 1
                                      ? "completed"
                                      : i == 2
                                          ? "cancelled"
                                          : "20min left",
                                  style: GoogleFonts.openSans(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: i == 2 ? Colors.red : Colors.green,
                                  ),
                                ),
                                Text(
                                  "GHS 00.00",
                                  style: GoogleFonts.openSans(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        //text
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  if (i != 0) {
                    return Divider(
                      thickness: 1,
                      height: 4,
                      color: Colors.grey[400],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
                itemCount: 3,
              ),
            );
          })
        ],
      ),
    );
  }
}
