import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF064E3B);
  static const primaryLight = Color(0xFF047857);
  static const accent = Color(0xFFD97706);
  static const accentLight = Color(0xFFFDE68A);
  static const dark = Color(0xFF0F172A);
  static const muted = Color(0xFF64748B);
  static const surface = Color(0xFFF8FAFC);
  static const backgroundColor = Color(0xFFFFFFFF);
  static const borderColor = Color.fromRGBO(189, 189, 189, 0.678);
  static const greenGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
  static const goldGradient = LinearGradient(
    colors: [accent, accentLight],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
}
