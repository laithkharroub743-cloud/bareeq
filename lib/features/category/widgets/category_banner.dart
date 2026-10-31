import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 12),

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        gradient: AppColors.greenGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'أقسام متجر بَريق الفاخرة',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: AppColors.surface),
              ),
              SizedBox(height: 2),
              Text(
                'اختر الفئة لاستعراض المنتجات الحصرية وتصفيتها',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: AppColors.surface),
              ),
            ],
          ),
          Text('🛍️', style: Theme.of(context).textTheme.headlineLarge),
        ],
      ),
    );
  }
}
