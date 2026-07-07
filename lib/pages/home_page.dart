import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/data/dummy_food.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/widgets/food_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                height: size.height * 0.28,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ),
            itemCount: foodItems.length,
            itemBuilder: (context, index) {
              return FoodItemCard(
                foodItem: foodItems[index],
                onFavoritePressed: (FoodItem foodItem) {
                  setState(() {
                    foodItem.isFavorite = !foodItem.isFavorite;
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
