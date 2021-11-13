import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/widgets/booking_widgets.dart';
import 'package:sitinapp/src/widgets/reviews_widget.dart';
import 'package:sizer/sizer.dart';

class RestaurantDetailView extends StatefulWidget {
  const RestaurantDetailView({Key? key, required this.restaurant})
      : super(key: key);
  static const String routeName = "/restaurant_details";
  final Restaurant restaurant;
  @override
  _RestaurantDetailViewState createState() => _RestaurantDetailViewState();
}

class _RestaurantDetailViewState extends State<RestaurantDetailView>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 25.h,
            collapsedHeight: 20.h,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.restaurant.photoUrl,
                    ),
                    onError: (err, stacktrace) {},
                  ),
                ),
              ),
              stretchModes: const [StretchMode.blurBackground],
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 2.0.h),
                  child: Text(
                    widget.restaurant.name,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      fontSize: 16.sp,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingStars(
                      value: widget.restaurant.cummulativeRating,
                      starCount: 1,
                      maxValueVisibility: false,
                      valueLabelVisibility: false,
                    ),
                    Text(
                      " ${widget.restaurant.cummulativeRating} (${widget.restaurant.ratings?.length ?? 0}) . ${widget.restaurant.cusine}",
                      style: GoogleFonts.openSans(
                        fontSize: 9.sp,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100.w,
                child: TabBar(
                  controller: _controller,
                  indicatorColor: Colors.green,
                  labelColor: Colors.brown,
                  tabs: const [
                    Tab(
                      text: "Book",
                    ),
                    Tab(
                      text: "Reviews",
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100.w,
                height: 100.h,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Booking(
                      restaurant: widget.restaurant,
                    ),
                    Reviews(),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
