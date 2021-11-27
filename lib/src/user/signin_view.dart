import 'dart:developer';
import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:sitinapp/src/services/db/local/bloc/cached_bloc.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/user/reservations_view.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';
import 'package:sitinapp/src/widgets/loading_widget.dart';
import 'package:sizer/sizer.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Allow Notifications'),
              content: const Text('Our app would like to send you notifications'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Don\'t Allow',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () => AwesomeNotifications().requestPermissionToSendNotifications().then((_) => Navigator.pop(context)),
                  child: const Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );

    AwesomeNotifications().actionStream.listen((notification) {
      if (notification.channelKey == 'scheduled_channel' && Platform.isIOS) {
        AwesomeNotifications().getGlobalBadgeCounter().then(
              (value) => AwesomeNotifications().setGlobalBadgeCounter(value - 1),
            );
      } else if (notification.channelKey == "scheduled_channel") {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => ReservationsView(
                reservationId: notification.payload!['id'],
                arrived: notification.buttonKeyPressed,
              ),
            ),
            (route) => route.isFirst);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CachedBloc>(
      create: (_) => getDep<CachedBloc>()..add(const CachedEvent.loadFromLocal()),
      child: BlocListener<CachedBloc, CachedState>(
        listener: (context, state) {
          state.maybeWhen(
              userLoaded: (customer) {
                Navigator.pushNamed(
                  context,
                  "/home",
                  arguments: customer,
                );
              },
              orElse: () {});
        },
        child: Scaffold(
            body: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            if (state is LoadedUser) {
              log("State is Loaded User");
              Navigator.pushNamed(
                context,
                "/home",
                arguments: state.user,
              );
            } else if (state is LoadingError) {
              log("Loading error ${state.msg}");
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    "Could Not Sign In,Try Again",
                    style: TextStyle(color: Colors.white),
                  )));
            }
          },
          builder: (context, state) {
            if (state is ReadyState) {
              return Stack(
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Image.asset(
                      "assets/images/table.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      CircleAvatar(
                        radius: 60.sp,
                        backgroundImage: const AssetImage("assets/images/Logo.jpeg"),
                      ),
                      const Spacer(),
                      const Text(
                        "Welcome ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.redAccent),
                      ),
                      const Spacer(),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
                          elevation: MaterialStateProperty.all(2),
                          fixedSize: MaterialStateProperty.all(Size(50.w, 6.h)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                width: .5.w,
                                color: Colors.red.shade200,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          "Reserve A Seat",
                          style: SitInTheme.lightTextTheme.headline4,
                        ),
                        onPressed: () {
                          context.read<UserBloc>().add(const SignInUser(true));
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h, top: 5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.grey[300],
                              child: Divider(
                                indent: 20.w,
                                endIndent: 20.w,
                                height: .3.h,
                              ),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(fontSize: 10, color: Colors.grey[300]),
                            ),
                            Container(
                              color: Colors.grey[300],
                              child: Divider(
                                indent: 20.w,
                                endIndent: 20.w,
                                height: .3.h,
                                thickness: 10.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<UserBloc>().add(const SignInUser());
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Sign In With Google",
                              style: TextStyle(fontSize: 12.sp, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ],
              );
            } else if (state is LoadingUser) {
              return const LoadingWidget();
            } else {
              return Stack(
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Image.asset(
                      "assets/images/table.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      CircleAvatar(
                        radius: 60.sp,
                        backgroundImage: const AssetImage("assets/images/Logo.jpeg"),
                      ),
                      const Spacer(),
                      const Text(
                        "Welcome ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.redAccent),
                      ),
                      const Spacer(),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                          elevation: MaterialStateProperty.all(2),
                          fixedSize: MaterialStateProperty.all(Size(50.w, 6.h)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                width: .5.w,
                                color: Colors.red.shade200,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          "Reserve A Seat",
                          style: SitInTheme.lightTextTheme.headline4,
                        ),
                        onPressed: () {
                          context.read<UserBloc>().add(const SignInUser(true));
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h, top: 5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.grey[300],
                              child: Divider(
                                indent: 20.w,
                                endIndent: 20.w,
                                height: .3.h,
                              ),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(fontSize: 10, color: Colors.grey[300]),
                            ),
                            Container(
                              color: Colors.grey[300],
                              child: Divider(
                                indent: 20.w,
                                endIndent: 20.w,
                                height: .3.h,
                                thickness: 10.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<UserBloc>().add(const SignInUser());
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white70)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Sign In With Google",
                              style: TextStyle(fontSize: 12.sp, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ],
              );
            }
          },
        )),
      ),
    );
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    super.dispose();
  }
}
