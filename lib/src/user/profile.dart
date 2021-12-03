import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sitinapp/src/settings/settings_view.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';
import 'package:sitinapp/src/widgets/textfield_widget.dart';
import 'package:sizer/sizer.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    Key? key,
  }) : super(key: key);

  static const String routeName = "/profile";

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneNumberCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.brown,
            ),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: context.read<UserBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loadedUser: (loaded) {
              nameCtrl.text = loaded.user?.name ?? "enter name";
              emailCtrl.text = loaded.user?.email ?? "enter email";

              if (loaded.user!.isAnonymous) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const Spacer(),
                      CircleAvatar(
                        radius: 40.sp,
                        backgroundColor: Colors.brown,
                        child: Text(
                          buildNameInitials(loaded.user?.name),
                          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.center,
                        child: Text("Anonymous"),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {

                      //     if (change != null) {
                      //       context.read<UserBloc>().add(UpdateUser(change));
                      //     }
                      //   },
                      //   style: ButtonStyle(
                      //       backgroundColor:
                      //           MaterialStateProperty.all(Colors.brown)),
                      //   child: Text(
                      //     "Sign In With Google ",
                      //     style: TextStyle(fontSize: 12.sp, color: Colors.white),
                      //   ),
                      // ),
                      BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                        if (state is LoadedUser) {
                          return ElevatedButton(
                            onPressed: () {
                              context.read<UserBloc>().add(UserEvent.convertAnonymousUser(state.user!.id));
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
                          );
                        } else {
                          return Container();
                        }
                      })
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      // physics: const BouncingScrollPhysics(),
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // const Spacer(),
                        CircleAvatar(
                          radius: 40.sp,
                          backgroundColor: Colors.brown,
                          child: Text(
                            buildNameInitials(loaded.user?.name),
                            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextFieldWidget(
                          label: 'Full Name',
                          controller: nameCtrl,
                        ),
                        const SizedBox(height: 24),
                        TextFieldWidget(
                          label: 'Email',
                          controller: emailCtrl,
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            final change = loaded.user?.copyWith(
                              name: nameCtrl.text,
                              email: emailCtrl.text,
                              isAnonymous: false,
                            );
                            if (change != null) {
                              context.read<UserBloc>().add(UserEvent.updateUser(change));
                            }
                          },
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.brown)),
                          child: Text(
                            "Save",
                            style: TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        ),
                        // BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                        //   if (state is LoadedUser) {
                        //     if (state.user == null) {
                        //       return ElevatedButton(
                        //         onPressed: () {
                        //           context.read<UserBloc>().add(const SignInUser());
                        //         },
                        //         style: ButtonStyle(
                        //             backgroundColor:
                        //                 MaterialStateProperty.all(Colors.white70)),
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             const Icon(
                        //               FontAwesomeIcons.google,
                        //               color: Colors.red,
                        //             ),
                        //             SizedBox(
                        //               width: 5.w,
                        //             ),
                        //             Text(
                        //               "Sign In With Google",
                        //               style: TextStyle(
                        //                   fontSize: 12.sp, color: Colors.black),
                        //             ),
                        //           ],
                        //         ),
                        //       );
                        //     } else {
                        //       return const SizedBox.shrink();
                        //     }
                        //   } else {
                        //     return const SizedBox.shrink();
                        //   }
                        // })
                      ],
                    ),
                  ),
                );
              }
            },
            orElse: () {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 25),
                    CircleAvatar(
                      radius: 40.sp,
                      backgroundColor: Colors.brown,
                      child: Text(
                        buildNameInitials("n a"),
                        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Anonymous"),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {

                    //     if (change != null) {
                    //       context.read<UserBloc>().add(UpdateUser(change));
                    //     }
                    //   },
                    //   style: ButtonStyle(
                    //       backgroundColor:
                    //           MaterialStateProperty.all(Colors.brown)),
                    //   child: Text(
                    //     "Sign In With Google ",
                    //     style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    //   ),
                    // ),
                    BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                      return state.maybeMap(
                        loadedUser: (loaded) {
                          return ElevatedButton(
                            onPressed: () {
                              context.read<UserBloc>().add(UserEvent.convertAnonymousUser(loaded.user!.id));
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
                          );
                        },
                        orElse: () {
                          return Container();
                        },
                      );
                    })
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

String buildNameInitials(String? username) {
  final names = username?.split(" ");
  if (names != null) {
    return "${names[0].characters.first.toUpperCase()}${names[1].characters.first.toUpperCase()}";
  } else {
    return "OO";
  }
}
