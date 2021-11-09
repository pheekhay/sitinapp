import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LaucherView extends StatelessWidget {
  const LaucherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return Scaffold(
          body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: const AssetImage("assets/images/table.jpg"),
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 2),
            ),
            CircleAvatar(
              backgroundImage: const AssetImage(
                "assets/images/sitinLogo.jpeg",
              ),
              radius: 15.w,
            ),
          ],
        ),
      ));
    });
  }
}
