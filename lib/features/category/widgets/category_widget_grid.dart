import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/features/catalog/domain/category.dart';
import 'package:flutter/material.dart';

class CategoryWidgetGrid extends StatelessWidget {
  const CategoryWidgetGrid({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PositionedDirectional(
                top: 8,
                start: 8,
                child: Container(
                  padding: EdgeInsetsDirectional.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle,

                    color: AppColors.primaryLight.withValues(alpha: 0.15),
                  ),
                  child: Text(
                    category.imageIcon,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'ساعات فاخرة',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: AppColors.dark),
              ),
              SizedBox(height: 4),
              Text(
                'تصاميم سويسرية وذهبية',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: AppColors.muted),
              ),
            ],
          ),
          PositionedDirectional(
            top: 4,
            end: 4,
            child: Container(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                color: AppColors.accentLight.withValues(alpha: 0.2),
              ),
              child: Text(
                '${category.productCount} منتج',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: AppColors.accent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
