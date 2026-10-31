import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/features/catalog/data/fake_products.dart';
import 'package:bareeq/features/products/widgets/product_card.dart';
import 'package:flutter/material.dart';

class FeaturedGrid extends StatelessWidget {
  const FeaturedGrid({super.key, required this.onOpentab});
  final void Function(int i) onOpentab;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'منتجات مختارة لك🔥',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Spacer(),
            TextButton.icon(
              iconAlignment: IconAlignment.end,
              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
              onPressed: () {
                onOpentab(2);
              },
              label: Text('عرض الكل '),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.66,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: dummyProducts2[index]);
          },
          itemCount: dummyProducts2.length,
        ),
      ],
    );
  }
}
