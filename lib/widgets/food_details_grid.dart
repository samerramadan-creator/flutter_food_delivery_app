import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivary_app/models/food_item.dart';
import 'package:food_delivary_app/widgets/delivery_details_card.dart';

class FoodDetailsGrid extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsGrid({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            DeliveryDetailsCard(
              icon: FontAwesomeIcons.fire,
              title: "Calories",
              value: foodItem.calories.toString(),
              color: Colors.deepOrange,
              unit: "calories",
            ),
            SizedBox(height: screenHeight * .015),
            DeliveryDetailsCard(
              icon: FontAwesomeIcons.stopwatch,
              title: "Cooking Time",
              value: foodItem.cookingTime.toString(),
              color: Colors.black,
              unit: "min",
            ),
          ],
        ),
        Column(
          children: [
            DeliveryDetailsCard(
              icon: FontAwesomeIcons.pepperHot,
              title: "Spicy Level",
              value: foodItem.spicyLevel,
              color: Colors.red,
              unit: "",
            ),
            SizedBox(height: screenHeight * .015),
            DeliveryDetailsCard(
              icon: FontAwesomeIcons.motorcycle,
              title: "Delivery Time",
              value: foodItem.deliveryTime.toString(),
              color: Colors.black,
              unit: "min",
            ),
          ],
        ),
      ],
    );
  }
}
