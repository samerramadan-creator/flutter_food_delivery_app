import 'package:flutter/cupertino.dart';
import 'package:food_delivary_app/models/food_item.dart';

class FoodDetailsArgs {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> toggleFavorite;

  FoodDetailsArgs({required this.foodItem, required this.toggleFavorite});
}
