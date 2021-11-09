import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:sitinapp/src/app.dart';
import 'package:sitinapp/src/firebasenotification.dart';
import 'package:sitinapp/src/settings/settings_controller.dart';
import 'package:sitinapp/src/settings/settings_service.dart';

void main() async {
  //this app belongs to bond
  WidgetsFlutterBinding.ensureInitialized();
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    SitIn(
      settingsController: settingsController,
    ),
  );
}
