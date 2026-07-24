class FoodItem {
  final String name;
  final double price;
  final String imageUrl;
  final String restaurant;
  final String description;
  final String spicyLevel;
  final int cookingTime;
  final int deliveryTime;
  final int calories;
  final double rate;
  bool isFavorite; //TODO: make it immutable when I learn BLOC

  FoodItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.restaurant,
    required this.description,
    required this.spicyLevel,
    required this.deliveryTime,
    required this.cookingTime,
    required this.calories,
    required this.rate,
  });
}
