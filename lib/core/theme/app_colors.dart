import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color.fromARGB(255, 7, 83, 62);
  static const primaryLight = Color(0xFF047857);
  static const accent = Color.fromARGB(255, 176, 94, 0);
  static const accentLight = Color.fromARGB(255, 243, 171, 27);
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
