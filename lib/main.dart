import 'package:bareeq/core/theme/app_theme.dart';
import 'package:bareeq/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const BarreqApp());
}

class BarreqApp extends StatelessWidget {
  const BarreqApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildLightTheme(),
      title: 'Bareeq',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale('ar')],

      home: LoginScreen()
      
    );
  }
}
