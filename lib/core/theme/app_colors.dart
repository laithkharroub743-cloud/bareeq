import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF064E3B);
  static const secondary = Color(0xFFD97706);
  static const onSurface = Color(0xFF0F172A);
  static const onSurfaceSecondry = Color(0xFF414141);
  static const surface = Color(0xFFF8FAFC);
  static const backgroundColor = Color(0xFFFFFFFF);
  static const borderColor = Color.fromRGBO(189, 189, 189, 0.678);
  static const greenGradient = LinearGradient(
    colors: [Color(0xFF064E3B), Color(0xCC064E3B)],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
  static const goldGradient = LinearGradient(
    colors: [Color(0xFFD97706), Color(0xCCD97706)],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
}
