import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/widgets/review_card.dart';
import 'package:sitinapp/src/widgets/review_chart_widget.dart';
import 'package:sizer/sizer.dart';

class Reviews extends StatefulWidget {
  Reviews({
    Key? key,
  }) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  Restaurant? restaurant;
  @override
  void initState() {
    values = restaurant?.totalWeights();
    super.initState();
  }

  Map<String, List<int>>? values;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.rate_review_rounded),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Reviews",
              style: SitInTheme.lightTextTheme.headline3,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.0.w, right: 6.w),
                child: Column(
                  children: [
                    Text(
                      "Overall",
                      style: SitInTheme.lightTextTheme.headline2,
                    ),
                    Text(
                      restaurant?.cummulativeRating.toString() ?? "4.6",
                      style: SitInTheme.lightTextTheme.headline3,
                    ),
                    RatingStars(
                      value: restaurant?.cummulativeRating ?? 4.6,
                      valueLabelVisibility: false,
                      maxValueVisibility: false,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8.w),
                color: Colors.brown[200],
                child: Divider(
                  color: Colors.red,
                  height: 18.h,
                  endIndent: 1,
                  indent: 1,
                ),
              ),
              SizedBox(
                height: 25.h,
                width: 53.w,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  color: Colors.white30,
                  child: ReviewChart(
                    oneValue: values?["stars"]?[0].toDouble(),
                    twoValue: values?["stars"]?[1].toDouble(),
                    threeValue: values?["stars"]?[2].toDouble(),
                    fourValue: values?["stars"]?[3].toDouble(),
                    fiveValue: values?["stars"]?[4].toDouble(),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          SizedBox(
            width: 100.w,
            height: 69.h,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ReviewCard();
                },
                separatorBuilder: (_, i) {
                  return Divider(
                    color: Colors.grey[300],
                  );
                },
                itemCount: restaurant?.ratings!.length ?? 10),
          )
          // restaurant?.ratings?.length != null
          //     ? Container(
          //         width: 100.w,
          //         height: 69.h,
          //         child: ListView.separated(
          //             itemBuilder: (context, index) {
          //               return ReviewCard(
          //                 rating:
          //               );
          //             },
          //             separatorBuilder: (_, i) {
          //               return Divider(
          //                 color: Colors.grey[300],
          //               );
          //             },
          //             itemCount: restaurant?.ratings!.length),
          //       )
          //     : SizedBox(
          //         width: 100.w,
          //         height: 69.h,
          //         child: Center(
          //           child: Text(
          //             "No Reviews Yet",
          //             style: SitInTheme.lightTextTheme.headline6,
          //           ),
          //         ))
        ],
      ),
    );
  }
}
