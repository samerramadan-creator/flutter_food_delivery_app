import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/models/food_item.dart';

List<FoodItem> foodItems = [
  // Burgers
  FoodItem(
    name: 'cheese burger',
    price: 6.99,
    imageUrl: AppImages.cheeseBurger,
    isFavorite: false,
  ),
  FoodItem(
    name: 'chicken burger',
    price: 5.99,
    imageUrl: AppImages.chickenBurger,
    isFavorite: false,
  ),

  // Pizzas
  FoodItem(
    name: 'chicken pizza',
    price: 9.99,
    imageUrl: AppImages.chickenPizza,
    isFavorite: false,
  ),
  FoodItem(
    name: 'margherita pizza',
    price: 8.99,
    imageUrl: AppImages.margheritaPizza,
    isFavorite: false,
  ),

  // Chicken
  FoodItem(
    name: 'crispy chicken',
    price: 7.49,
    imageUrl: AppImages.crispyChicken,
    isFavorite: false,
  ),
  FoodItem(
    name: 'fried chicken',
    price: 10.99,
    imageUrl: AppImages.friedChicken,
    isFavorite: false,
  ),

  // Hot Dog
  FoodItem(
    name: 'hot dog',
    price: 4.99,
    imageUrl: AppImages.hotDog,
    isFavorite: false,
  ),

  // Shawarma
  FoodItem(
    name: 'shawarma',
    price: 6.49,
    imageUrl: AppImages.shawarma,
    isFavorite: false,
  ),

  // Tacos
  FoodItem(
    name: 'tacos',
    price: 8.49,
    imageUrl: AppImages.tacos,
    isFavorite: false,
  ),

  // Sushi
  FoodItem(
    name: 'sushi',
    price: 12.99,
    imageUrl: AppImages.sushi,
    isFavorite: false,
  ),

  // Pasta
  FoodItem(
    name: 'pasta alfredo',
    price: 9.49,
    imageUrl: AppImages.pastaAlfredo,
    isFavorite: false,
  ),

  // Lasagna
  FoodItem(
    name: 'lasagna',
    price: 11.99,
    imageUrl: AppImages.lasagna,
    isFavorite: false,
  ),

  // Steak
  FoodItem(
    name: 'grilled steak',
    price: 15.99,
    imageUrl: AppImages.grilledSteak,
    isFavorite: false,
  ),

  // Salad
  FoodItem(
    name: 'caesar salad',
    price: 5.49,
    imageUrl: AppImages.caesarSalad,
    isFavorite: false,
  ),

  // Dessert
  FoodItem(
    name: 'donuts',
    price: 3.99,
    imageUrl: AppImages.donuts,
    isFavorite: false,
  ),
];
