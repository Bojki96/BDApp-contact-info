import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/routing/main_router.dart';
import 'package:flutter_template/theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) {
        return MaterialApp.router(
          useInheritedMediaQuery: true,
          theme: theme,
          locale: DevicePreview.locale(context),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('hr', 'HR'),
            Locale('en', 'US'),
          ],
          routeInformationProvider: mainRouter.routeInformationProvider,
          routeInformationParser: mainRouter.routeInformationParser,
          routerDelegate: mainRouter.routerDelegate,
        );
      },
    );
  }
}
