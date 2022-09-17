import 'package:flutter/material.dart';
import 'package:flutter_template/local_storage/hive/local_storage.dart';
import 'package:flutter_template/local_storage/hive/local_storage_box.dart';
import 'package:flutter_template/local_storage/simple_preferences.dart';
import 'package:flutter_template/notifications/local_notifications.dart';
import 'package:flutter_template/typography.dart';
import 'package:flutter_template/ui_components/custom_dialog.dart';
import 'package:flutter_template/ui_components/dialog.dart';
import 'package:flutter_template/ui_components/toast.dart';
import 'package:flutter_template/utils/launch.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  final TextEditingController hiveController = TextEditingController();
  final TextEditingController preferencesController = TextEditingController();

  String hiveValue = '';
  String preferncesValue = '';

  Widget _buildLauncherTest() {
    return Row(
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
                onPressed: () => Launch.mail('bdappdevelopment@gmail.com'),
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
    );
  }

  Widget _buildLocalNotificationTest() {
    return Column(
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
    );
  }

  Widget _buildLocalStorageTest() {
    return Column(
      children: [
        TextType.h3(
          'Test Hive',
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: hiveController,
                ),
              ),
            ),
            TextType.p1(
              hiveValue,
              textAlign: TextAlign.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red,
            ),
          ],
        ),
        TextType.h3(
          'Test Simple Preferences',
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: preferencesController,
                ),
              ),
            ),
            TextType.p1(
              preferncesValue,
              textAlign: TextAlign.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red,
            ),
          ],
        ),
        TextButton(
          onPressed: () async {
            await LocalStorage.put(
              LocalStorageBox.name.test,
              key: 'test1',
              object: hiveController.text,
            );
            await SimplePreferences.setEmail(email: preferencesController.text);
            setState(() {
              preferncesValue = SimplePreferences.getEmail()!;
              hiveValue = LocalStorage.get(
                  boxName: LocalStorageBox.name.test, key: 'test1');
            });
          },
          child: TextType.p1('Test LocalStorage'),
        ),
      ],
    );
  }

  Widget _buildDialogTest() {
    return TextButton(
      onPressed: () => showUIDialog(
        context,
        child: const CustomDialog(),
      ),
      child: TextType.p1('Test UI Dialog'),
    );
  }

  Widget _buildToastTest() {
    return ElevatedButton(
      onPressed: () => showToastMessage(
        context,
        child: ToastMessage(
          child: TextType.p1('HELLOOOO'),
        ),
      ),
      child: TextType.h3('Show Toast'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextType.h1('TESTING SCREEN'),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            child: _buildLauncherTest(),
          ),
          _buildLocalNotificationTest(),
          _buildLocalStorageTest(),
          _buildDialogTest(),
          _buildToastTest(),
        ],
      ),
    );
  }
}
