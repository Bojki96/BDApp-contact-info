import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

// TODO: SETUP WHOLE FILE
class ReceivedNotification {
  final int id;
  final String title;
  final String body;
  final String payload;

  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });
}

class Notifications {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final BehaviorSubject<ReceivedNotification> didRecievedSubject =
      BehaviorSubject<ReceivedNotification>();

  Notifications() {
    _initializeNotifications();
    tz.initializeTimeZones();
  }

  void _initializeNotifications() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('logop_krug_manja');
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {
      ReceivedNotification receivedNotificationSubject = ReceivedNotification(
          id: id, title: title ?? '', body: body ?? '', payload: payload ?? '');
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

  void showDailyAtTime() async {
    final location = tz.getLocation('Europe/Zagreb');
    var scheduledNotification = tz.TZDateTime.from(DateTime(2022), location);

    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'FLUTTER_TEMPLATE_ID', 'FLUTTER_TEMPLATE_CHANEEL',
        styleInformation: BigTextStyleInformation(''),
        color: Colors.black,
        enableLights: true,
        ledColor: Colors.red,
        ledOnMs: 1000,
        ledOffMs: 1000,
        largeIcon: DrawableResourceAndroidBitmap('logop_not'),
        importance: Importance.max,
        priority: Priority.high);
    const iOSPlatformChannelSpecifics = IOSNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    const platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin
        .zonedSchedule(0, 'TITLE', 'DESCRIPTION', scheduledNotification,
            platformChannelSpecifics,
            androidAllowWhileIdle: true,
            uiLocalNotificationDateInterpretation:
                UILocalNotificationDateInterpretation.absoluteTime,
            payload: scheduledNotification.toString())
        .catchError((error) => print(error));
  }

  Future<List<PendingNotificationRequest>> getScheduledNotifications() async {
    final pendingNotificationRequests =
        await _flutterLocalNotificationsPlugin.pendingNotificationRequests();
    return pendingNotificationRequests;
  }

  Future<List<ActiveNotification>?> getActiveNotifications() async {
    final activeNotifications = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.getActiveNotifications();
    return activeNotifications;
  }

  Future cancelNotification(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }

  setListenerForLoweriOSVersions(Function lowerVersions) {
    didRecievedSubject.listen(
      (receivedNotificationForLowerVersion) {
        lowerVersions(receivedNotificationForLowerVersion);
      },
    );
  }

  Future cancelAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
