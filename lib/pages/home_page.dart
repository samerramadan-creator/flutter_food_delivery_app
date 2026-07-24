import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/data/dummy_food.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/pages/food_details_page.dart';
import 'package:food_delivary_app/widgets/food_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void toggleFavorite(FoodItem foodItem) {
    setState(() {
      foodItem.isFavorite = !foodItem.isFavorite;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppImages.offerBanner,
                width: double.infinity,
                height: isLandscape ? screenHeight * .5 : screenHeight * .25,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (screenWidth < 600)
                  ? 2
                  : (screenWidth / 220).floor(),
              mainAxisSpacing: screenHeight * .02,
              crossAxisSpacing: screenWidth * .018,
            ),
            itemCount: foodItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FoodDetailsPage(
                      foodItem: foodItems[index],
                      toggleFavorite: toggleFavorite,
                    ),
                  ),
                ),
                child: FoodItemCard(
                  foodItem: foodItems[index],
                  toggleFavorite: toggleFavorite,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
