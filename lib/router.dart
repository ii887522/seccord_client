import 'package:flutter/material.dart';
import 'package:seccord_client/pages/user/forgot_password_page.dart';
import 'package:seccord_client/pages/user/login_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/user/login',
  routes: [
    // User module
    GoRoute(
      path: '/user/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/user/forgot-password',
      builder: (context, state) => const ForgotPasswordPage(),
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ForgotPasswordPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // TODO: Implement slide transition during page navigation
            // return SlideTransition(position: position)
          },
        );
      },
    ),
  ],
);
