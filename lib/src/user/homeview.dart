import 'package:flutter/material.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/restaurant/restaurants_view.dart';
import 'package:sitinapp/src/user/profile.dart';
import 'package:sitinapp/src/user/reservations_view.dart';
import 'package:sitinapp/src/widgets/bottom_navigation.dart';

class HomeView extends StatefulWidget {
  const HomeView(
      {Key? key, this.user = const Customer(id: "id", name: "Test App")})
      : super(key: key);
  final Customer user;
  static const String routeName = "/home";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController? _tabcontroller;
  @override
  Widget build(BuildContext context) {
    _tabcontroller = _tabcontroller ?? TabController(vsync: this, length: 3);

    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: Scaffold(
        bottomNavigationBar: buildBottomBar(currentIndex, (value) {
          setState(() {
            currentIndex = value;
          });
          _tabcontroller?.animateTo(value);
        }),
        body: TabBarView(
          controller: _tabcontroller,
          children: [
            RestaurantsListView(),
            const ReservationsView(),
            const ProfileView()
          ],
        ),
      ),
    );
  }
}
