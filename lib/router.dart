import 'package:flutter/material.dart';
import 'package:seccord_client/pages/user/email_verification_page.dart';
import 'package:seccord_client/pages/user/forgot_password_page.dart';
import 'package:seccord_client/pages/user/login_page.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> Function(BuildContext, GoRouterState) _pageBuilder(
  Widget Function(GoRouterState) builder,
) {
  return (context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: builder(state),
      barrierColor: Colors.black54,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(begin: const Offset(1.0, 0.0), end: Offset.zero).chain(
              CurveTween(curve: Curves.easeOut),
            ),
          ),
          child: child,
        );
      },
    );
  };
}

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
      pageBuilder: _pageBuilder((state) => const ForgotPasswordPage()),
    ),
    GoRoute(
      path: '/user/email-verification/:emailAddr',
      pageBuilder: _pageBuilder(
        (state) => EmailVerificationPage(
          emailAddr: state.pathParameters['emailAddr'] ?? '',
        ),
      ),
    ),
  ],
);
