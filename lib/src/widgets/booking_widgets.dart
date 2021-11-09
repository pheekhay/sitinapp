import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/widgets/reservation_stepper.dart';
import 'package:sizer/sizer.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  late GoogleMapController _mapController;

  final LatLng _coordinates = const LatLng(5.55602, -0.1969);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Special Note"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
                text:
                    """ Nulla laborum magna sint amet aliqua amet dolor consectetur non sunt.Consectetur mollit esse cillum pariatur amet.Voluptate qui pariatur veniam anim consectetur et incididunt proident sunt occaecat aliquip laborum. Est eiusmod esse magna consectetur consectetur pariatur labore mollit aliquip duis. 
              Consequat tempor eiusmod sint aliqua laboris proident do id sunt enim est eu do fugiat.Reprehenderit irure ullamco consequat ad incididunt incididunt est.
               Occaecat dolore ea aute laborum consequat commodo nostrud ex ex enim.
                    """),
          ),
        ),
        Text(
          "PHOTOS",
          style: SitInTheme.lightTextTheme.headline5,
        ),
        SizedBox(
          height: 1.h,
        ),
        SizedBox(
          width: 100.w,
          height: 15.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 28.w,
                  height: 5.h,
                  constraints: BoxConstraints(
                    minHeight: 6.h,
                    minWidth: 16.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.iloveqatar.net/public/images/local/open-restaurent-2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              separatorBuilder: (_, i) {
                return SizedBox(
                  width: 2.w,
                );
                // } else {
                //   return const SizedBox.shrink();
                // }
              },
              itemCount: 6),
        ),
        Container(
          margin: EdgeInsets.only(top: 3.h, bottom: 3.h),
          height: 25.h,
          width: 80.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _coordinates,
              zoom: 15.0,
            ),
            zoomControlsEnabled: false,
            trafficEnabled: true,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Phone: ",
                    children: [
                      TextSpan(
                        text: "0532324324",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            color: Colors.brown,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.brown[200],
                    fontSize: 12.sp,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "Cuisine:",
                    children: [
                      TextSpan(
                        text: "Italian",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            color: Colors.brown,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.brown[200],
                    fontSize: 12.sp,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "Payment Options: ",
                    children: [
                      TextSpan(
                        text: "MOMO",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.normal,
                            color: Colors.brown,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.brown[200],
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(8),
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: () {
            showSheet(context);
          },
          child: Text("Make Reservation"),
        ),
      ],
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
  ) {
    return Material(
      child: Container(
        width: 100.w,
        height: 80.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: const SingleChildScrollView(
          child: ReservationStepper(),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: _buildBottomSheet,
      anchors: [0, 0.5, 1],
    );
  }
}
