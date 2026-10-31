class CategoryModel {
  final String id;
  final String title;
  final String? subtitle;
  final int productCount;
  final String imageIcon; // Replace with String imagePath if using PNGs/SVGs

  const CategoryModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.productCount,
    required this.imageIcon,
  });
}
