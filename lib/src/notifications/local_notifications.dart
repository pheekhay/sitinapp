import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

Future<void> scheduleNotifications({required DateTime notificationSchedule, required String restaurantName}) async {
  final scd = notificationSchedule.add(const Duration(minutes: 6));

  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: '${Emojis.food_cooking} Your reservation for $restaurantName has been cancelled',
      body: 'This is due to failing within the allotted time limit of your reservation',
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'MARK_DONE',
        label: 'OK',
      ),
    ],
    schedule: NotificationCalendar(
      day: scd.day,
      year: scd.year,
      month: scd.month,
      hour: scd.hour,
      minute: scd.minute,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> newReservationNotification({required String restaurantName}) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.food_cooking} New Reservation',
      body: 'Your reservation for $restaurantName has been booked',
      notificationLayout: NotificationLayout.Default,
    ),
  );
}

Future<void> reservationArrivalReminder(
    {required String reservationId, required String restaurantName, required DateTime notificationSchedule}) async {
  final scd = notificationSchedule.subtract(const Duration(minutes: 10));
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: '${Emojis.food_cooking} $restaurantName Reservation',
      body: 'Let us know of your arrival to $restaurantName ',
      notificationLayout: NotificationLayout.Default,
      payload: {"id": reservationId},
      displayOnBackground: true,
      displayOnForeground: true,
      autoDismissable: false,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'true',
        label: 'Arrived',
      ),
      NotificationActionButton(
        key: 'false',
        label: 'Not Yet',
        isDangerousOption: true,
        color: Colors.red[300],
      ),
    ],
    schedule: NotificationCalendar(
      day: scd.day,
      year: scd.year,
      month: scd.month,
      hour: scd.hour,
      minute: scd.minute,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> cancelNotifications([int? withId]) {
  if (withId != null) {
    return AwesomeNotifications().cancel(withId);
  } else {
    return AwesomeNotifications().cancelAll();
  }
}

int createUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.remainder(5);
}
