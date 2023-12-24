import 'package:flutter/material.dart';
import 'package:responsive_spacing/responsive_spacing.dart';

class DirectMsgsPage extends StatelessWidget {
  const DirectMsgsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      appBar: AppBar(),
      body: Builder(
        builder: (context) {
          return const SafeArea(
            child: SingleChildScrollView(
              child: Center(), // TODO: Implement this page
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add a direct message (DM)
        },
      ),
    );
  }
}
