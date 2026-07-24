import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivary_app/pages/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
        fontFamily: "Outfit",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.white70,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1.5,
          indent: 20,
          endIndent: 20,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
