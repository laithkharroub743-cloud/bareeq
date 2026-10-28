import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/painting.dart';

class AppDecoration {
  static BoxDecoration containerDecoration = BoxDecoration(
    border: Border.all(color: AppColors.borderColor),
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(24),
  );
}
