import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/food_item.dart';

class CustomPhoto extends StatefulWidget {
  final FoodItem foodItem;
  final ValueChanged<FoodItem> toggleFavorite;

  const CustomPhoto({
    super.key,
    required this.foodItem,
    required this.toggleFavorite,
  });

  @override
  State<CustomPhoto> createState() => _CustomPhotoState();
}

class _CustomPhotoState extends State<CustomPhoto> {
  @override
  Widget build(BuildContext context) {
    final favoriteIcon = Icon(
      widget.foodItem.isFavorite
          ? Platform.isIOS
                ? CupertinoIcons.heart_fill
                : Icons.favorite_rounded
          : Platform.isIOS
          ? CupertinoIcons.heart
          : Icons.favorite_border_outlined,
      color: Colors.red,
    );
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment(-.5, -.9),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            widget.foodItem.imageUrl,
            height: screenHeight * .4,
            width: double.infinity,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
        Align(
          alignment: Alignment(.9, 0),
          child: Container(
            height: screenHeight * .06,
            width: screenWidth * .13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade300,
            ),
            child: IconButton(
              onPressed: () {
                widget.toggleFavorite(widget.foodItem);
                setState(() {});
              },
              icon: favoriteIcon,
            ),
          ),
        ),
        Align(
          alignment: Alignment(-.9, 0),
          child: Container(
            height: screenHeight * .06,
            width: screenWidth * .13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade300,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.chevron_left_rounded,
                size: 30,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
