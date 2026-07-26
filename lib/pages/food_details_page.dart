import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/ui_models/food_details_args.dart';
import 'package:food_delivary_app/widgets/bottom_bar.dart';
import 'package:food_delivary_app/widgets/custom_photo.dart';
import 'package:food_delivary_app/widgets/food_details_grid.dart';

class FoodDetailsPage extends StatefulWidget {
  const FoodDetailsPage({super.key});

  static const routeName = "/food-details";
  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 1;

  void incrementCount() => setState(() {
    quantity++;
  });
  void decreamentCount() => setState(() {
    quantity--;
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final FoodDetailsArgs foodDetailsArgs =
        ModalRoute.of(context)!.settings.arguments as FoodDetailsArgs;
    final FoodItem foodItem = foodDetailsArgs.foodItem;
    final ValueChanged<FoodItem> toggleFavorite =
        foodDetailsArgs.toggleFavorite;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPhoto(foodItem: foodItem, toggleFavorite: toggleFavorite),
              SizedBox(height: screenHeight * .01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodItem.name,
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "by ${foodItem.restaurant}",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * .065,
                    width: screenWidth * .35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200,
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) => Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: constraints.maxHeight * .8,
                            width: constraints.maxWidth * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            child: IconButton(
                              onPressed: (quantity >= 2)
                                  ? decreamentCount
                                  : null,
                              icon: Icon(
                                Icons.remove,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                          Text(
                            "$quantity",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Container(
                            height: constraints.maxHeight * .8,
                            width: constraints.maxWidth * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            child: IconButton(
                              onPressed: incrementCount,
                              icon: Icon(Icons.add, color: Colors.deepOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Colors.orange.shade700),
                  Text(
                    foodItem.rate.toString(),
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge!.copyWith(color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * .01),
              Text(
                "Description",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                foodItem.description,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: screenHeight * .03),
              FoodDetailsGrid(foodItem: foodItem),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(foodItem: foodItem, count: quantity),
    );
  }
}
