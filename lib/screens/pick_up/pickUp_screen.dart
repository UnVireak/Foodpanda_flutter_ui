import 'package:flutter/material.dart';
import 'package:food_fanda_clone/screens/pick_up/sliverAppbar.dart';

class PickUpScreen extends StatelessWidget {
  const PickUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 35,
          color: Colors.white,
          onPressed: () {
            // _scaffoldKey.currentState!.openDrawer();
            },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selected location",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Phnom Penh",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              
            pinned: false,
            floating:
                true, // Set to true to hide FlexibleSpaceBar when scrolling up
            snap: true,
            expandedHeight: 75.5,
            excludeHeaderSemantics: true,
automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(background: SliverPickUpScreen()),
            backgroundColor: Colors.pink,
          ),
         
        ],
      ),
    );
  }
}