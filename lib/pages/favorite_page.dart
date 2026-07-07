import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/data/dummy_food.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/widgets/favorite_item_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final List<FoodItem> favoriteItems = foodItems
      .where((item) => item.isFavorite)
      .toList();

  @override
  Widget build(BuildContext context) {
    if (favoriteItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Image.asset(
              AppImages.emptyState,
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),

            Text(
              "No Favorites Yet",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "tap the ",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.favorite_rounded, color: Colors.red, size: 20),
                  Text(
                    " icon on any meal to save it here",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                return FavoriteItemCard(
                  foodItem: favoriteItems[index],
                  removeFavoriteItem: (FoodItem foodItem) => setState(() {
                    favoriteItems.remove(foodItem);
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
