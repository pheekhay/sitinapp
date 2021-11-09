import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sitinapp/src/settings/settings_view.dart';
import 'package:sitinapp/src/user/bloc/user_bloc.dart';
import 'package:sitinapp/src/widgets/textfield_widget.dart';
import 'package:sizer/sizer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    Key? key,
  }) : super(key: key);

  static const String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textCtrl = TextEditingController();
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
          if (state is LoadedUser) {
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
                      buildNameInitials(state.user?.name),
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFieldWidget(
                    label: 'Full Name',
                    text: state.user?.name ?? "enter name ",
                    onChanged: (name) {
                      _textCtrl.text = name;
                    },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      final change = state.user?.copyWith(
                        name: _textCtrl.text,
                        isAnonymous: false,
                      );
                      if (change != null) {
                        context.read<UserBloc>().add(UpdateUser(change));
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.brown)),
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                  ),
                  BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                    if (state is LoadedUser) {
                      if (state.user == null) {
                        return ElevatedButton(
                          onPressed: () {
                            context.read<UserBloc>().add(const SignInUser());
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white70)),
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
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    } else {
                      return const SizedBox.shrink();
                    }
                  })
                ],
              ),
            );
          } else {
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
                      buildNameInitials(null),
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFieldWidget(
                    label: 'Full Name',
                    text: "enter name ",
                    onChanged: (name) {},
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.brown)),
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                  ),
                  BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                    if (state is LoadedUser) {
                      if (state.user == null) {
                        return ElevatedButton(
                          onPressed: () {
                            context.read<UserBloc>().add(const SignInUser());
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white70)),
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
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    } else {
                      return const SizedBox.shrink();
                    }
                  })
                ],
              ),
            );
          }
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
