import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SimpleShadow(
          offset: const Offset(0, 2),
          child: Image.asset('assets/favicon_64.png', width: 64, height: 64),
        ),
        SizedBox(width: context.spacing.l),
        SimpleShadow(
          offset: const Offset(0, 2),
          child: Text(
            AppLocalizations.of(context)!.title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
        ),
      ],
    );
  }
}
