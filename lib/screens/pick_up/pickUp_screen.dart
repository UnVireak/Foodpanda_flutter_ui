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

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(55, 233, 30, 98)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(" 🧧✨"),
                      SizedBox(width: 200,),
                       
                        
                    // SizedBox(width: 10,),
                    //   Image.asset("assets/images/pick_up_screen/pandalogo.jpg")
                    ],
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.only( bottom: 0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 23, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                            ),

                            Text(
                              "Your daily deals",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
