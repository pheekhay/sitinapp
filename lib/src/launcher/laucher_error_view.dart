import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';
import 'package:sizer/sizer.dart';

class LaucherErrorView extends StatelessWidget {
  const LaucherErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return Material(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset("assets/images/connection_Lost.png"),
              TextButton(
                  onPressed: () {
                    Restart.restartApp();
                  },
                  child: const Text("Restart"))
            ],
          ),
        ),
      );
    });
  }
}
