import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/widgets/custom_favorite_button.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> toggleFavorite;

  const FoodItemCard({
    super.key,
    required this.foodItem,
    required this.toggleFavorite
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
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment(-.5, -1),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    foodItem.imageUrl,
                    height: constraints.maxHeight * .65,
                    width: constraints.maxWidth * .65,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                CustomFavoriteButton(
                  foodItem: foodItem,
                  toggleFavorite : toggleFavorite,
                  constraints: constraints,
                ),
              ],
            ),
            SizedBox(height: constraints.maxHeight * .01),
            Text(
              foodItem.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: constraints.maxHeight * .01),
            Text(
              '\$${foodItem.price.toStringAsFixed(2)}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
