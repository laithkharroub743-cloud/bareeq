import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/features/catalog/data/fake_categories.dart';
import 'package:bareeq/features/category/widgets/category_widget_strip.dart';
import 'package:flutter/material.dart';

class CategoryStrip extends StatelessWidget {
  const CategoryStrip({super.key, required this.onOpentab});
  final void Function(int i) onOpentab;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'تصفح حسب الفئة',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton.icon(
              onPressed: () {
                onOpentab(1);
              },
              label: Text(
                'عرض الكل ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.accent),
              ),
              icon: Icon(Icons.arrow_forward),
              iconAlignment: IconAlignment.end,
              style: TextButton.styleFrom(foregroundColor: AppColors.accent),
            ),
          ],
        ),

        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: dummyCategories.map((category) {
              return CategoryWidgetStrip(category: category);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
