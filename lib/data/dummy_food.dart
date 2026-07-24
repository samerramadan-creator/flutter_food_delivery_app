import 'package:food_delivary_app/core/constants/app_images.dart';
import 'package:food_delivary_app/enums/spicy_level.dart';
import 'package:food_delivary_app/models/food_item.dart';

List<FoodItem> foodItems = [
  // Burgers
  FoodItem(
    name: 'Cheese burger',
    price: 6.99,
    imageUrl: AppImages.cheeseBurger,
    restaurant: 'Burger House',
    description:
        'Juicy beef burger topped with melted cheddar cheese, fresh lettuce, tomatoes, and our signature sauce.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 12,
    deliveryTime: 20,
    calories: 650,
    rate: 4.7,
    isFavorite: false,
  ),
  FoodItem(
    name: 'Chicken burger',
    price: 5.99,
    imageUrl: AppImages.chickenBurger,
    restaurant: 'Burger House',
    description:
        'Crispy chicken fillet served with fresh lettuce, pickles, and creamy mayonnaise.',
    spicyLevel: SpicyLevel.medium.name,
    cookingTime: 10,
    deliveryTime: 18,
    calories: 590,
    rate: 4.6,
    isFavorite: false,
  ),

  // Pizzas
  FoodItem(
    name: 'Chicken pizza',
    price: 9.99,
    imageUrl: AppImages.chickenPizza,
    restaurant: 'Pizza Corner',
    description:
        'Fresh pizza loaded with grilled chicken, mozzarella cheese, and colorful bell peppers.',
    spicyLevel: SpicyLevel.medium.name,
    cookingTime: 18,
    deliveryTime: 30,
    calories: 820,
    rate: 4.8,
    isFavorite: false,
  ),
  FoodItem(
    name: 'Margherita pizza',
    price: 8.99,
    imageUrl: AppImages.margheritaPizza,
    restaurant: 'Pizza Corner',
    description:
        'Classic Italian pizza with tomato sauce, mozzarella cheese, and fresh basil leaves.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 15,
    deliveryTime: 25,
    calories: 730,
    rate: 4.5,
    isFavorite: false,
  ),

  // Chicken
  FoodItem(
    name: 'Crispy chicken',
    price: 7.49,
    imageUrl: AppImages.crispyChicken,
    restaurant: 'Chicken Hub',
    description:
        'Golden crispy fried chicken served with fries and a delicious dipping sauce.',
    spicyLevel: SpicyLevel.hot.name,
    cookingTime: 14,
    deliveryTime: 22,
    calories: 710,
    rate: 4.7,
    isFavorite: false,
  ),
  FoodItem(
    name: 'Fried chicken',
    price: 10.99,
    imageUrl: AppImages.friedChicken,
    restaurant: 'Chicken Hub',
    description:
        'Tender fried chicken pieces seasoned with our special blend of spices.',
    spicyLevel: SpicyLevel.medium.name,
    cookingTime: 16,
    deliveryTime: 28,
    calories: 840,
    rate: 4.9,
    isFavorite: false,
  ),

  // Hot Dog
  FoodItem(
    name: 'Hot dog',
    price: 4.99,
    imageUrl: AppImages.hotDog,
    restaurant: 'Street Bites',
    description:
        'Grilled hot dog topped with ketchup, mustard, and crispy onions.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 8,
    deliveryTime: 15,
    calories: 420,
    rate: 4.4,
    isFavorite: false,
  ),

  // Shawarma
  FoodItem(
    name: 'Shawarma',
    price: 6.49,
    imageUrl: AppImages.shawarma,
    restaurant: 'Shawarma King',
    description:
        'Fresh shawarma wrap filled with juicy chicken, garlic sauce, and pickles.',
    spicyLevel: SpicyLevel.hot.name,
    cookingTime: 9,
    deliveryTime: 17,
    calories: 610,
    rate: 4.8,
    isFavorite: false,
  ),

  // Tacos
  FoodItem(
    name: 'Tacos',
    price: 8.49,
    imageUrl: AppImages.tacos,
    restaurant: 'Mexican Grill',
    description:
        'Soft tacos filled with seasoned beef, fresh vegetables, cheese, and salsa.',
    spicyLevel: SpicyLevel.hot.name,
    cookingTime: 13,
    deliveryTime: 24,
    calories: 560,
    rate: 4.7,
    isFavorite: false,
  ),

  // Sushi
  FoodItem(
    name: 'Sushi',
    price: 12.99,
    imageUrl: AppImages.sushi,
    restaurant: 'Tokyo Sushi',
    description:
        'Fresh sushi rolls prepared with premium salmon, rice, seaweed, and avocado.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 20,
    deliveryTime: 35,
    calories: 430,
    rate: 4.9,
    isFavorite: false,
  ),

  // Pasta
  FoodItem(
    name: 'Pasta alfredo',
    price: 9.49,
    imageUrl: AppImages.pastaAlfredo,
    restaurant: 'Italian Taste',
    description:
        'Creamy Alfredo pasta made with parmesan cheese and grilled chicken.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 16,
    deliveryTime: 27,
    calories: 760,
    rate: 4.6,
    isFavorite: false,
  ),

  // Lasagna
  FoodItem(
    name: 'Lasagna',
    price: 11.99,
    imageUrl: AppImages.lasagna,
    restaurant: 'Italian Taste',
    description:
        'Traditional homemade lasagna layered with beef, cheese, and rich tomato sauce.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 22,
    deliveryTime: 32,
    calories: 880,
    rate: 4.8,
    isFavorite: false,
  ),

  // Steak
  FoodItem(
    name: 'Grilled steak',
    price: 15.99,
    imageUrl: AppImages.grilledSteak,
    restaurant: 'Steak House',
    description:
        'Perfectly grilled beef steak served with vegetables and herb butter.',
    spicyLevel: SpicyLevel.medium.name,
    cookingTime: 25,
    deliveryTime: 40,
    calories: 790,
    rate: 4.9,
    isFavorite: false,
  ),

  // Salad
  FoodItem(
    name: 'Caesar salad',
    price: 5.49,
    imageUrl: AppImages.caesarSalad,
    restaurant: 'Green Bowl',
    description:
        'Fresh Caesar salad with crispy lettuce, parmesan cheese, croutons, and Caesar dressing.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 7,
    deliveryTime: 16,
    calories: 310,
    rate: 4.5,
    isFavorite: false,
  ),

  // Dessert
  FoodItem(
    name: 'Donuts',
    price: 3.99,
    imageUrl: AppImages.donuts,
    restaurant: 'Sweet Time',
    description:
        'Soft and fluffy donuts topped with chocolate glaze and colorful sprinkles.',
    spicyLevel: SpicyLevel.mild.name,
    cookingTime: 8,
    deliveryTime: 18,
    calories: 390,
    rate: 4.4,
    isFavorite: false,
  ),
];
