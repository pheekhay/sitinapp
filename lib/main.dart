import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:sitinapp/src/app.dart';
import 'package:sitinapp/src/notifications/firebasenotification.dart';
import 'package:sitinapp/src/settings/settings_controller.dart';
import 'package:sitinapp/src/settings/settings_service.dart';

void main() async {
  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    [
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        channelDescription: '',
      ),
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Action Notifications',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        channelDescription: '',
      ),
    ],
  );
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
