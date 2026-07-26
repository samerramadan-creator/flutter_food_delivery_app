import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/category_item.dart';

class FoodCategoryCard extends StatelessWidget {
  final int? selectedCategoryId;
  final CategoryItem categoryItem;
  final ValueChanged<int> changeCategoryId;

  const FoodCategoryCard({
    super.key,
    required this.categoryItem,
    required this.changeCategoryId,
    required this.selectedCategoryId,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => changeCategoryId(categoryItem.id),
            child: Container(
              height: screenHeight * .09,
              width: screenWidth * .175,
              decoration: BoxDecoration(
                color: selectedCategoryId == categoryItem.id
                    ? Colors.deepOrange
                    : Colors.deepOrange.shade50,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange.withValues(alpha: 0.125),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  categoryItem.logoUrl,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Text(
          categoryItem.title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
