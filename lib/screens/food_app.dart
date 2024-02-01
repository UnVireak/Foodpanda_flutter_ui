import 'package:flutter/material.dart';
// import 'package:food_fanda_clone/screens/home_screen.dart';
import 'package:food_fanda_clone/screens/splash/splash_screen.dart';
class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   
      home: SplashScreen(),
    );
  
    
  }
}
