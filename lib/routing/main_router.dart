import 'package:bd_app_contact_info/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/contact_info_screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Goodbye!",
          style: TextStyle(color: ThemeColors.gray, fontSize: 21),
        ),
      ),
    );
  }
}

final mainRouter = GoRouter(
  initialLocation: '/contact-info',
  errorBuilder: (context, state) => const ErrorScreen(),
  navigatorBuilder: (context, state, child) {
    return Material(
      child: child,
    );
  },
  routes: [
    GoRoute(
      path: '/contact-info',
      builder: (context, state) => const ContactInfoScreen(),
    ),
  ],
);
