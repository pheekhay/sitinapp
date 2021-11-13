import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/restaurant/restaurant_detail_view.dart';
import 'package:sizer/sizer.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({Key? key, this.restaurant}) : super(key: key);
  final Restaurant? restaurant;

  @override
  Widget build(BuildContext context) {
    final double starcount = restaurant?.cummulativeRating ?? 0;
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
                  image: NetworkImage(restaurant?.photoUrl ?? ""),
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
              title: Text(restaurant?.name ?? "Unknown"),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RatingStars(
                    value: restaurant?.cummulativeRating ?? 0,
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
                        : starcount >= 3 && starcount <= 4.8
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
                  Text(restaurant?.cusine ?? "cusine unknown"),
                  Text(restaurant?.location.name ?? "Accra")
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
