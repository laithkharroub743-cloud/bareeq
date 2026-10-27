import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.accent,
    ),
    textTheme: GoogleFonts.cairoTextTheme().copyWith(
      displayLarge: GoogleFonts.cairo(fontWeight: FontWeight.bold),
      headlineLarge: GoogleFonts.cairo(fontWeight: FontWeight.bold),
      titleLarge: GoogleFonts.cairo(fontWeight: FontWeight.bold),
      bodyLarge: GoogleFonts.cairo(fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.cairo(fontWeight: FontWeight.bold),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF1F5F9),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF064E3B), width: 1.5),
      ),
    ),
    scaffoldBackgroundColor: AppColors.surface,
  );
}
