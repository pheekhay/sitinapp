import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/widgets/reservation_stepper.dart';
import 'package:sizer/sizer.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key, required this.restaurant}) : super(key: key);
  final Restaurant restaurant;
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  late GoogleMapController _mapController;

  late LatLng _coordinates;
  @override
  void initState() {
    _coordinates =
        LatLng(widget.restaurant.location.lat, widget.restaurant.location.long);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Special Note"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
                text: widget.restaurant.specialNote ??
                    "Welcome to ${widget.restaurant.name}"),
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
                        widget.restaurant.photos![index],
                      ),
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
              itemCount: widget.restaurant.photos?.length ?? 0),
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
                        text: widget.restaurant.phoneNumber,
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
                        text: widget.restaurant.cusine,
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
          child: const Text("Make Reservation"),
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
    return const Card(
      // width: 100.w,
      // height: 100.h,
      // decoration: const BoxDecoration(
      //   color: Colors.amber,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      // ),
      child: SingleChildScrollView(
        child: ReservationStepper(),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showFlexibleBottomSheet(
      minHeight: 0.2,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: _buildBottomSheet,
      anchors: [0.2, 0.5, 1],
    );
  }
}
