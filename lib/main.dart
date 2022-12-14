import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'local_storage/simple_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SimplePreferences.init();
  await Future.wait([]);

  // This captures errors reported by the Flutter framework.
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    // delegate error handling to the active zone

    Zone.current.handleUncaughtError(
        errorDetails.exception, errorDetails.stack ?? StackTrace.empty);
  };

  // This captures everything else. Mostly event callback errors.
  // Flutter aggresively catches errors when kDebugMode=true so a lot of your errors won't be processed by this zone
  // but will be in a production release: https://stackoverflow.com/questions/57879455/flutter-catching-all-unhandled-exceptions
  runZonedGuarded(() {
    runApp(const App());
  }, (error, stack) {
    FlutterError.dumpErrorToConsole(
      FlutterErrorDetails(exception: error, stack: stack),
    );
  });
}
