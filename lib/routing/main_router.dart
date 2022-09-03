import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/testing_screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Error main router")),
    );
  }
}

final mainRouter = GoRouter(
  initialLocation: '/landing',
  errorBuilder: (context, state) => const ErrorScreen(),
  navigatorBuilder: (context, state, child) {
    return Material(
      child: child,
    );
  },
  routes: [
    GoRoute(
      path: '/landing',
      builder: (context, state) => const TestingScreen(),
    ),
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) => const LoginScreen(),
    // ),
    // GoRoute(
    //   path: '/register',
    //   builder: (context, state) => const RegisterScreen(),
    // ),
    // GoRoute(
    //   path: '/forgot-password-password',
    //   builder: (context, state) => const ForgotPasswordPasswordScreen(),
    // ),
    // GoRoute(
    //   path: '/forgot-password-confirm',
    //   builder: (context, state) => const ForgotPasswordConfirm(),
    // ),
    // GoRoute(
    //   path: '/forgot-password-mail',
    //   builder: (context, state) => const ForgotPasswordMailScreen(),
    // ),
    // GoRoute(
    //   path: '/forgot-password-link',
    //   builder: (context, state) => const ForgotPasswordLinkScreen(),
    // ),
    // GoRoute(
    //   path: '/news',
    //   builder: (context, state) => const NewsScreen(),
    // ),
    // GoRoute(
    //     path: '/department-services/:id',
    //     builder: (context, state) {
    //       final int id = int.parse(state.params['id']!);
    //       return DepartmentServicesScreen(id: id);
    //     }),
    // GoRoute(
    //   path: '/main/:screen',
    //   builder: (context, state) {
    //     final currentScreen = state.params['screen']!;
    //     return BottomNavigation(
    //       currentScreen: currentScreen,
    //       key: state.pageKey,
    //     );
    //   },
    // ),
    // GoRoute(
    //   path: '/info',
    //   builder: (context, state) => const InformationsScreen(),
    // ),
    // GoRoute(
    //   path: '/coupon-details/:id',
    //   builder: (context, state) {
    //     final int id = int.parse(state.params['id']!);
    //     return CouponDetailsScreen(id: id);
    //   },
    // ),
    // GoRoute(
    //   path: '/service-details/:id',
    //   builder: (context, state) {
    //     final int id = int.parse(state.params['id']!);
    //     return ServiceDetailsScreen(id: id);
    //   },
    // ),
    // GoRoute(
    //   path: '/search-services',
    //   builder: (context, state) => const SearchServicesScreen(),
    // ),
  ],
);
