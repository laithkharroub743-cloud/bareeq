import 'package:bareeq/core/router/app_router.dart';
import 'package:bareeq/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const BarreqApp());
}

class BarreqApp extends StatelessWidget {
  const BarreqApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.appRouter,
      theme: buildLightTheme(),
      title: 'Bareeq',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: Locale('ar'),
      supportedLocales: [Locale('ar')],

      
    );
  }
}
