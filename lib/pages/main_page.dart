import 'package:flutter/material.dart';
import 'package:food_delivary_app/pages/cart_page.dart';
import 'package:food_delivary_app/pages/favorite_page.dart';
import 'package:food_delivary_app/pages/home_page.dart';
import 'package:food_delivary_app/pages/profile_page.dart';
import 'package:food_delivary_app/widgets/custom_button_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = const [
    HomePage(),
    FavoritePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'foodak',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      drawer: const Drawer(),

      body: SafeArea(child: pages[selectedIndex]),

      bottomNavigationBar: CustomButtonNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
