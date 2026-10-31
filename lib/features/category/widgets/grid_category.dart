import 'package:bareeq/features/catalog/data/fake_categories.dart';
import 'package:bareeq/features/category/widgets/category_widget_grid.dart';
import 'package:flutter/material.dart';

class GridCategory extends StatelessWidget {
  const GridCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      children: dummyCategories.map((category) {
        return CategoryWidgetGrid(category: category);
      }).toList(),
    );
  }
}
