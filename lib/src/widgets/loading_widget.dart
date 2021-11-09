import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sizer/sizer.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  Widget build(BuildContext context) {
    _controller ??= AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));

    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: SpinKitCubeGrid(
        size: 50.0,
        itemBuilder: (BuildContext context, int index) {
          return const DecoratedBox(
            decoration: BoxDecoration(color: Colors.brown),
          );
        },
        controller: _controller,
      ),
    );
  }

  @override
  void dispose() {
    // _controller?.stop();
    _controller?.dispose();
    super.dispose();
  }
}
