import 'package:flutter/material.dart';
import 'package:flutter_template/notifications/local_notifications.dart';
import 'package:flutter_template/typography.dart';
import 'package:flutter_template/utils/launch.dart';

final LocalNotifications _localNotifications = LocalNotifications();

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextType.h1('LANDING SCREEN'),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextType.h3(
                        'Test phone launcher',
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () => Launch.phone('098 1756 158'),
                        icon: const Icon(Icons.phone),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextType.h3(
                        'Test mail launcher',
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () =>
                            Launch.mail('bdappdevelopment@gmail.com'),
                        icon: const Icon(Icons.mail),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextType.h3(
                        'Test sms launcher',
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () => Launch.phone('098 1756 158'),
                        icon: const Icon(Icons.sms),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              TextType.h3(
                'Test local notifications',
                textAlign: TextAlign.center,
              ),
              IconButton(
                onPressed: () => LocalNotifications.showDailyAtTime(),
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
