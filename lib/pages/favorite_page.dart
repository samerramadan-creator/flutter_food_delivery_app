import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/data/dummy_food.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/pages/food_details_page.dart';
import 'package:food_delivary_app/ui_models/food_details_args.dart';
import 'package:food_delivary_app/widgets/food_item_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void toggleFavorite(FoodItem foodItem) {
    setState(() {
      foodItem.isFavorite = !foodItem.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> favoriteItems = foodItems
        .where((item) => item.isFavorite)
        .toList();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    if (favoriteItems.isEmpty) {
      return SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                AppImages.emptyState,
                height: isLandscape ? screenHeight * .75 : screenHeight * .5,
                width: screenWidth,
                fit: isLandscape ? BoxFit.contain : BoxFit.cover,
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
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (screenWidth < 600) ? 2 : (screenWidth / 220).floor(),
          mainAxisSpacing: screenHeight * .02,
          crossAxisSpacing: screenWidth * .018,
        ),
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).pushNamed(
              FoodDetailsPage.routeName,
              arguments: FoodDetailsArgs(
                foodItem: favoriteItems[index],
                toggleFavorite: toggleFavorite,
              ),
            ),
            child: FoodItemCard(
              foodItem: favoriteItems[index],
              toggleFavorite: toggleFavorite,
            ),
          );
        },
      ),
    );
  }
}
