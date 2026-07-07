import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';

class FavoriteItemCard extends StatelessWidget {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> removeFavoriteItem;

  const FavoriteItemCard({
    super.key,
    required this.foodItem,
    required this.removeFavoriteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(4.0),
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                foodItem.imageUrl,
                width: 90,
                height: 90,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                children: [
                  Text(
                    foodItem.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$${foodItem.price.toStringAsFixed(2)}",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),

              child: IconButton(
                onPressed: () {
                  foodItem.isFavorite = false;
                  removeFavoriteItem(foodItem);
                },
                icon: Icon(
                  foodItem.isFavorite
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
