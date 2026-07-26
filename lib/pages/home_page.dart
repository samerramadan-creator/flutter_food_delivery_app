import 'package:flutter/material.dart';
import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/data/dummy_food.dart';
import 'package:food_delivary_app/models/category_item.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/pages/food_details_page.dart';
import 'package:food_delivary_app/ui_models/food_details_args.dart';
import 'package:food_delivary_app/widgets/food_category_card.dart';
import 'package:food_delivary_app/widgets/food_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedCategoryId;
  bool enableCategoryFilter = false;
  late List<FoodItem> filteredFood;

  @override
  void initState() {
    super.initState();
    filteredFood = foodItems;
  }

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
          SizedBox(
            height: screenHeight * .15,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categoryItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => FoodCategoryCard(
                categoryItem: categoryItems[index],
                changeCategoryId: (int id) {
                  setState(() {
                    if (selectedCategoryId == id || !enableCategoryFilter) {
                      enableCategoryFilter = !enableCategoryFilter;
                    }
                    if (enableCategoryFilter) {
                      selectedCategoryId = id;
                      filteredFood = foodItems
                          .where(
                            (item) => item.categoryId == selectedCategoryId,
                          )
                          .toList();
                    } else {
                      selectedCategoryId = null;
                      filteredFood = foodItems;
                    }
                  });
                },
                selectedCategoryId: selectedCategoryId,
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
            itemCount: filteredFood.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                  FoodDetailsPage.routeName,
                  arguments: FoodDetailsArgs(
                    foodItem: filteredFood[index],
                    toggleFavorite: toggleFavorite,
                  ),
                ),
                child: FoodItemCard(
                  foodItem: filteredFood[index],
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
