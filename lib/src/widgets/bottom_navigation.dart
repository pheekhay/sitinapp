import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sizer/sizer.dart';

typedef SetIndex = void Function(int index);
SalomonBottomBar buildBottomBar(int currentIndex, SetIndex onTap) {
  return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: onTap,
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: Colors.brown,
      items: [
        SalomonBottomBarItem(
          icon: Icon(
            Icons.home,
            size: 20.sp,
          ),
          title: const Text("Home"),
        ),
        SalomonBottomBarItem(
          icon: Icon(
            CupertinoIcons.calendar,
            size: 20.sp,
          ),
          title: const Text("Reservations"),
        ),
        SalomonBottomBarItem(
          icon: Icon(
            CupertinoIcons.person,
            size: 20.sp,
          ),
          title: const Text("Profile"),
        ),
      ]);
}
