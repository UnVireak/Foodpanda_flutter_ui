import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fanda_clone/cubits/scroll_cubit.dart';
// import 'package:food_fanda_clone/screens/home_screen.dart';
import 'package:food_fanda_clone/screens/splash/splash_screen.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScrollCubit>(
      create: (BuildContext context) => ScrollCubit(),
      child: MaterialApp(
        //   theme: ThemeData(
        // primarySwatch: Colors.blue,
        // unselectedWidgetColor: Colors.purpleAccent, //<-- SEE HERE
        // ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
