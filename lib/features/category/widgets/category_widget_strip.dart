import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/features/catalog/domain/category.dart';
import 'package:flutter/material.dart';

class CategoryWidgetStrip extends StatelessWidget {
  const CategoryWidgetStrip({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
          child: Row(
            children: [
              Text(
                category.imageIcon,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4),
                  Text(
                    '${category.productCount} منتجات',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: AppColors.muted),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
