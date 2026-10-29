import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.gradient = AppColors.greenGradient,
    this.loading = false,
    this._iconData,
  });
  final String label;
  final VoidCallback? onPressed;
  final LinearGradient gradient;
  final bool loading;
  final IconData? _iconData;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        gradient: gradient,
      ),
      child: SizedBox(
        height: 52,
        width: double.infinity,
        child: Align(
          alignment: AlignmentGeometry.center,
          child: TextButton.icon(
            onPressed: loading ? null : onPressed,

            label: loading
                ? SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2.5,
                    ),
                  )
                : Text(
                    label,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge!.copyWith(color: AppColors.surface),
                    textAlign: TextAlign.center,
                  ),
            icon: Icon(loading ? null : _iconData, color: AppColors.surface),
            iconAlignment: IconAlignment.end,
          ),
        ),
      ),
    );
  }
}
