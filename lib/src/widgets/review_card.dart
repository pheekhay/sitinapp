import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:sitinapp/src/models/sitin_rating.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/user/profile.dart';
import 'package:sizer/sizer.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
    this.rating = const SitInRating(
      customerId: "12",
      customerName: "SitIn User",
      rateDate: null,
      id: "1",
      stars: 3.5,
      review:
          "Esse reprehenderit pariatur magna incididunt elit ut ad ut ut non labore.",
    ),
  }) : super(key: key);

  final SitInRating rating;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 50.w,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20.sp,
          backgroundColor: Colors.brown,
          child: Text(
            buildNameInitials(rating.customerName),
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          rating.customerName,
          style: SitInTheme.lightTextTheme.headline4,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingStars(
              value: rating.stars,
              starSize: 11.sp,
              maxValueVisibility: false,
              valueLabelVisibility: false,
            ),
            Text(
              rating.review ?? "",
              style: SitInTheme.lightTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
