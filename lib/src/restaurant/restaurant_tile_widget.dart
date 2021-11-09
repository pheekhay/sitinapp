import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/restaurant/restaurant_detail_view.dart';
import 'package:sizer/sizer.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({Key? key, this.restaurant}) : super(key: key);
  final Restaurant? restaurant;
  final double starcount = 5;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          //image
          Container(
            height: 14.h,
            width: 23.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(restaurant?.photoUrl ??
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
            height: 15.h,
            child: ListTile(
              selectedTileColor: Colors.green[400],
              onTap: () {
                Navigator.pushNamed(context, RestaurantDetailView.routeName,
                    arguments: restaurant);
              },
              isThreeLine: true,
              title: Text("Potbelly Shack"),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RatingStars(
                    value: 3,
                    onValueChanged: (v) {
                      //
                      // setState(() {
                      //   value = v;
                      // });
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                    ),
                    starCount: 5,
                    starSize: 20,
                    valueLabelColor: starcount < 3
                        ? Colors.red
                        : starcount == 3
                            ? Colors.green
                            : Colors.amber,
                    valueLabelTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0),
                    valueLabelRadius: 10,
                    maxValue: 5,
                    starSpacing: 2,
                    maxValueVisibility: false,
                    valueLabelVisibility: true,
                    animationDuration: const Duration(milliseconds: 1000),
                    valueLabelPadding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                    valueLabelMargin: const EdgeInsets.only(right: 8),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: Colors.yellow,
                  ),
                  Text("Italian"),
                  Text("East Legon,Accra")
                ],
              ),
            ),
          )
          //text
        ],
      ),
    );
  }
}
