import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'notifications.dart';

class LocalNotifications {
  static late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  // TODO: HOW TO REMOVE FROM STATIC
  static final BehaviorSubject<Notifications> didRecievedSubject =
      BehaviorSubject<Notifications>();
  static void init() async {
    tz.initializeTimeZones();
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('bd_logo');
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(onDidReceiveLocalNotification: (
      int id,
      String? title,
      String? body,
      String? payload,
    ) async {
      Notifications receivedNotificationSubject = Notifications(
        id: id,
        title: title ?? '',
        body: body ?? '',
        payload: payload ?? '',
      );

      didRecievedSubject.add(receivedNotificationSubject);
    });
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: ((payload) {
        if (payload != null) {}
      }),
    );
  }

  static void showDailyAtTime() async {
    final location = tz.getLocation('Europe/Zagreb');
    var scheduledNotification = tz.TZDateTime.from(
      DateTime.now().add(const Duration(seconds: 2)),
      location,
    );

    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'FLUTTER_TEMPLATE_ID',
      'FLUTTER_TEMPLATE_CHANEEL',
      styleInformation: BigTextStyleInformation(''),
      color: Colors.black,
      enableLights: true,
      ledColor: Colors.blue,
      ledOnMs: 1000,
      ledOffMs: 1000,
      largeIcon: DrawableResourceAndroidBitmap('bd_logo'),
      importance: Importance.max,
      priority: Priority.high,
    );
    const iOSPlatformChannelSpecifics = IOSNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await _flutterLocalNotificationsPlugin
        .zonedSchedule(
          0,
          'TITLE',
          'DESCRIPTION',
          scheduledNotification,
          platformChannelSpecifics,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
          payload: scheduledNotification.toString(),
        )
        .catchError(
          (error) => print(error),
        );
  }

  static Future<List<PendingNotificationRequest>>
      getScheduledNotifications() async {
    final pendingNotificationRequests =
        await _flutterLocalNotificationsPlugin.pendingNotificationRequests();
    return pendingNotificationRequests;
  }

  static Future<List<ActiveNotification>?> getActiveNotifications() async {
    final activeNotifications = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.getActiveNotifications();
    return activeNotifications;
  }

  static void cancelNotification(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }

  static void setListenerForLoweriOSVersions(Function lowerVersions) {
    didRecievedSubject.listen(
      (receivedNotificationForLowerVersion) {
        lowerVersions(receivedNotificationForLowerVersion);
      },
    );
  }

  static void cancelAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
