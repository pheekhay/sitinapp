import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.max,
  );

  final RemoteNotification? notification = message.notification;
  final AndroidNotification? android = message.notification?.android;
  // final AppleNotification? ios = message.notification?.apple;
  // If `onMessage` is triggered with a notification, construct our own
  // local notification to show to users using the created channel.
  if (notification != null && android != null) {
    _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id, channel.name,
          channelDescription: channel.description, icon: "@mipmap/ic_launcher",
          // other properties...
        ),
      ),
    );
  }
  //  else if (notification != null && ios != null) {
  //   _flutterLocalNotificationsPlugin.show(
  //     notification.hashCode,
  //     notification.title,
  //     notification.body,
  //     const NotificationDetails(
  //       iOS: IOSNotificationDetails(
  //         presentBadge: true,
  //         presentSound: true,
  //         presentAlert: true,
  //         badgeNumber: 0,

  //         // other properties...
  //       ),
  //     ),
  //   );
  // }
}

class SitInNotifications {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final FirebaseMessaging messaging;
  SitInNotifications(this.messaging);

  void init() {
    createChannel();
    setForgroundNotification();
    saveToken();
    final InitializationSettings initializationSettings;
    if (Platform.isAndroid) {
      const initialzationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/ic_launcher');
      initializationSettings =
          const InitializationSettings(android: initialzationSettingsAndroid);

      _flutterLocalNotificationsPlugin.initialize(initializationSettings);
    } else if (Platform.isIOS) {
      const initializationSettingIos = IOSInitializationSettings();
      initializationSettings =
          const InitializationSettings(iOS: initializationSettingIos);
      _flutterLocalNotificationsPlugin.initialize(initializationSettings);
    }
    listenForNotification();
  }

  Future<void> createChannel() async {
    if (Platform.isAndroid) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    } else if (Platform.isIOS) {
      _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();
    }
  }

  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.max,
  );

  Future<void> setForgroundNotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  Future<void> saveTokenToDatabase(String token) async {
    final String? userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId != null) {
      try {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .update({
          'tokens': FieldValue.arrayUnion([token]),
        });
      } on Exception catch (_) {
        return;
      }
    }
  }

  Future<void> saveToken() async {
    final String? token = await FirebaseMessaging.instance.getToken();

    // Save the initial token to the database
    if (token != null) {
      try {
        await saveTokenToDatabase(token);
      } catch (_) {}
    }
    // Any time the token refreshes, store this in the database too.
    FirebaseMessaging.instance.onTokenRefresh
        .listen(saveTokenToDatabase, cancelOnError: true);
  }

  void listenForNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final RemoteNotification? notification = message.notification;
      final AndroidNotification? android = message.notification?.android;
      final AppleNotification? ios = message.notification?.apple;
      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        _flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: android.smallIcon,
              // other properties...
            ),
          ),
        );
      } else if (notification != null && ios != null) {
        _flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            iOS: IOSNotificationDetails(
              presentBadge: true,
              presentSound: true,
              presentAlert: true,
              badgeNumber: 0,

              // other properties...
            ),
          ),
        );
      }
    });
  }
}
