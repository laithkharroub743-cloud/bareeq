import 'package:bareeq/features/category/widgets/category_banner.dart';
import 'package:bareeq/features/category/widgets/grid_category.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: ListView(
          children: [CategoryBanner(), SizedBox(height: 8), GridCategory()],
        ),
      ),
    );
  }
}
