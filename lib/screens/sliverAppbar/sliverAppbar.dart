import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      
      title: Text("hi", style: TextStyle(color: const Color.fromARGB(255, 226, 39, 25)),),
      // expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
       background: Image.asset("assets/images/Chicken Burger.jpg"),
        
      ),
      pinned: true,
      floating: false,
      // FlexibleSpaceBar(title: ,)
      // Add other SliverAppBar properties as needed
    );

  }
}
