import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BareeqLogo extends StatelessWidget {
  const BareeqLogo({super.key, this.width = 100, this.height = 100});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'lib/assets/icon/bareeq-logo.svg',
          width: width,
          height: height,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'بَـريـق',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '.',
                style: Theme.of(
                  context,
                ).textTheme.displayLarge!.copyWith(color: AppColors.accent),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
