class FoodItem {
  final String name;
  final double price;
  final String imageUrl;
  bool isFavorite; //TODO: make it immutable when I learn BLOC

  FoodItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite
  });
}

