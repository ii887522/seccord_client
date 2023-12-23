import 'package:flutter/material.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/components/user/forgot_password_form.dart';
import 'package:seccord_client/components/user/logo.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color(0xFFC0C0C0)],
                  ),
                ),
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                child: Padding(
                  padding: EdgeInsets.all(context.spacing.l),
                  child: Column(
                    children: [
                      const SizedBox(height: 160),
                      const Logo(),
                      SizedBox(height: context.spacing.xxl),
                      const ForgotPasswordForm(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
