import 'package:food_delivary_app/core/constants/app_images.dart';

class CategoryItem {
  final int id;
  final String logoUrl;
  final String title;

  const CategoryItem({required this.id, required this.logoUrl, required this.title});
}

const List<CategoryItem> categoryItems = [
  CategoryItem(id: 1, logoUrl: AppImages.burgerIcon, title: "Burger"),
  CategoryItem(id: 2, logoUrl: AppImages.pizzaIcon, title: "Pizza"),
  CategoryItem(id: 3, logoUrl: AppImages.friedChickenIcon, title: "Chicken"),
  CategoryItem(id: 4, logoUrl: AppImages.hotDogIcon, title: "Hotdog"),
  CategoryItem(id: 5, logoUrl: AppImages.shawarmaIcon, title: "Shawarma"),
  CategoryItem(id: 6, logoUrl: AppImages.tacoIcon, title: "Taco"),
  CategoryItem(id: 7, logoUrl: AppImages.sushiIcon, title: "Sushi"),
  CategoryItem(id: 8, logoUrl: AppImages.pastaIcon, title: "Pasta"),
  CategoryItem(id: 9, logoUrl: AppImages.lasagnaIcon, title: "lasagna"),
  CategoryItem(id: 10, logoUrl: AppImages.steakIcon, title: "Steak"),
  CategoryItem(id: 11, logoUrl: AppImages.saladIcon, title: "Salad"),
  CategoryItem(id: 12, logoUrl: AppImages.donutIcon, title: "Donut"),
];
