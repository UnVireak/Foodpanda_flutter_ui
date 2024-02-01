import 'package:flutter/material.dart';
// import 'package:food_fanda_clone/screens/food_app.dart';
import 'package:food_fanda_clone/screens/food_app.dart';
import 'package:flutter/services.dart';
// import 'package:food_fanda_clone/screens/home_screen.dart';
// import 'package:food_fanda_clone/screens/splashScreen/load.dart';
// import 'package:food_fanda_clone/screens/splashScreen/splashScreen.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.pink),
    );
  runApp(const FoodApp());
}

