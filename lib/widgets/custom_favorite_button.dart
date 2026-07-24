import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';

class CustomFavoriteButton extends StatelessWidget {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> toggleFavorite;
  final BoxConstraints constraints;

  const CustomFavoriteButton({
    super.key,
    required this.foodItem,
    required this.toggleFavorite,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteIcon = Icon(
      foodItem.isFavorite
          ? Platform.isIOS
                ? CupertinoIcons.heart_fill
                : Icons.favorite_rounded
          : Platform.isIOS
          ? CupertinoIcons.heart
          : Icons.favorite_border_outlined,
      color: Colors.red,
    );

    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: constraints.maxHeight * .22,
        width: constraints.maxWidth * .22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: IconButton(
            onPressed: () => toggleFavorite(foodItem),
            icon: favoriteIcon,
          ),
        ),
      ),
    );
  }
}
