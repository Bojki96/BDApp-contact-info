// TODO: SETUP FIREBASE NOTIFICATIONS

// Future<void> firebaseNotification(
//       {@required String title, @required String body, @required int id}) async {
  
//       final androidPlatformChannelSpecifics = AndroidNotificationDetails(
//           'bdapp-contact-info_ID', 'bdapp-contact-info_CHANNEL',
//           styleInformation: BigTextStyleInformation(''),
//           color: const Color.fromARGB(255, 255, 0, 0),
//           enableLights: true,
//           ledColor: const Color.fromARGB(255, 255, 255, 0),
//           ledOnMs: 1000,
//           ledOffMs: 1000,
//           largeIcon: DrawableResourceAndroidBitmap('logop_not'),
//           importance: Importance.max,
//           priority: Priority.high);
//       final iOSPlatformChannelSpecifics = IOSNotificationDetails(
//         presentAlert: true,
//         presentBadge: true,
//         presentSound: true,
//       );
//       final platformChannelSpecifics = NotificationDetails(
//           android: androidPlatformChannelSpecifics,
//           iOS: iOSPlatformChannelSpecifics);
//       await _flutterLocalNotificationsPlugin.show(
//           id, title, body, platformChannelSpecifics);
//     }
//   }
// }



// class FirebaseNotificationService {
//   static subscribeToTopic({@required String topic}) {
//     FirebaseMessaging.instance.subscribeToTopic(topic);
//   }

//   static unsubscribeFromTopic({@required String topic}) {
//     FirebaseMessaging.instance.unsubscribeFromTopic(topic);
//   }

//   static Future<bool> permissions() async {
//     bool permissonGranted = false;
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     settings.authorizationStatus == AuthorizationStatus.authorized
//         ? permissonGranted = true
//         : permissonGranted = false;
//     return permissonGranted;
//   }

//   static foregroundMessage() async {
//     FirebaseMessaging.instance.getInitialMessage();
//     bool granted = true;
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       if (message.data != null) {
     
//           if (Platform.isIOS) {
//             await FirebaseNotificationService.permissions()
//                 .then((value) => granted = value);
//           }
//           if (granted) {
//             Map data = message.data;
//             Notifications _notifications = Notifications();
//             String title = data['title'];
//             String body = data['body'];
//             int id = 0;
           
//             _notifications.firebaseNotification(
//                 title: title, body: body, id: id);
          
  
//         }
//       }
//     });
//   }
// }
