class ProductModel {
  final String id;
  final String title;
  final String category;
  final double price;
  final double oldPrice;
  final double rating;
  final String badge;
  final String imageUrl;
  final bool isFavorite;

  const ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.badge,
    required this.imageUrl,
    this.isFavorite = false,
  });

  int get discountPercent {
    if (oldPrice <= 0 || price > oldPrice) return 0;
    final discountedPrice = oldPrice - price;
    return ((discountedPrice / oldPrice) * 100).round();
  }
}
