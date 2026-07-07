import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> onFavoritePressed;

  const FoodItemCard({
    super.key,
    required this.foodItem,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withValues(alpha: 0.2),
            spreadRadius: 1.5,
            blurRadius: 12,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  foodItem.imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: IconButton(
                    onPressed: () {
                      onFavoritePressed(foodItem);
                    },
                    icon: Icon(
                      foodItem.isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            foodItem.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '\$${foodItem.price.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
