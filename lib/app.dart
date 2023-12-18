import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seccord_client/pages/user/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
      theme: ThemeData(
        useMaterial3: false,
        // Light color scheme generated from https://m3.material.io/theme-builder#/custom
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF385BA9),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color(0xFFDAE2FF),
          onPrimaryContainer: Color(0xFF001946),
          secondary: Color(0xFF585E71),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color(0xFFDCE2F9),
          onSecondaryContainer: Color(0xFF151B2C),
          tertiary: Color(0xFF725572),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xFFFDD7FA),
          onTertiaryContainer: Color(0xFF2A122C),
          error: Color(0xFFBA1A1A),
          errorContainer: Color(0xFFFFDAD6),
          onError: Color(0xFFFFFFFF),
          onErrorContainer: Color(0xFF410002),
          background: Color(0xFFFEFBFF),
          onBackground: Color(0xFF001849),
          surface: Color(0xFFFEFBFF),
          onSurface: Color(0xFF001849),
          surfaceVariant: Color(0xFFE1E2EC),
          onSurfaceVariant: Color(0xFF44464F),
          outline: Color(0xFF757780),
          onInverseSurface: Color(0xFFEEF0FF),
          inverseSurface: Color(0xFF002B75),
          inversePrimary: Color(0xFFB1C5FF),
          shadow: Color(0xFF000000),
          surfaceTint: Color(0xFF385BA9),
          outlineVariant: Color(0xFFC5C6D0),
          scrim: Color(0xFF000000),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        // Dark color scheme generated from https://m3.material.io/theme-builder#/custom
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFFB1C5FF),
          onPrimary: Color(0xFF002C70),
          primaryContainer: Color(0xFF1B438F),
          onPrimaryContainer: Color(0xFFDAE2FF),
          secondary: Color(0xFFC0C6DC),
          onSecondary: Color(0xFF2A3042),
          secondaryContainer: Color(0xFF404659),
          onSecondaryContainer: Color(0xFFDCE2F9),
          tertiary: Color(0xFFE0BBDD),
          onTertiary: Color(0xFF412742),
          tertiaryContainer: Color(0xFF593D59),
          onTertiaryContainer: Color(0xFFFDD7FA),
          error: Color(0xFFFFB4AB),
          errorContainer: Color(0xFF93000A),
          onError: Color(0xFF690005),
          onErrorContainer: Color(0xFFFFDAD6),
          background: Color(0xFF001849),
          onBackground: Color(0xFFDBE1FF),
          surface: Color(0xFF001849),
          onSurface: Color(0xFFDBE1FF),
          surfaceVariant: Color(0xFF44464F),
          onSurfaceVariant: Color(0xFFC5C6D0),
          outline: Color(0xFF8F9099),
          onInverseSurface: Color(0xFF001849),
          inverseSurface: Color(0xFFDBE1FF),
          inversePrimary: Color(0xFF385BA9),
          shadow: Color(0xFF000000),
          surfaceTint: Color(0xFFB1C5FF),
          outlineVariant: Color(0xFF44464F),
          scrim: Color(0xFF000000),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LoginPage(),
    );
  }
}
