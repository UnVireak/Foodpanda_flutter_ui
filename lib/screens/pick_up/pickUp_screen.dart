import 'package:flutter/material.dart';
import 'package:food_fanda_clone/screens/pick_up/sliverAppbar.dart';

class PickUpScreen extends StatelessWidget {
  // const PickUpScreen({super.key});
  List your_daily_deal_img = [
    "fav_drink",
    "aba_pay",
    "panda_send",
    "panda_pro",
    "save_upto",
    "new_user"
  ];
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
                    height: 70,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(55, 233, 30, 98)),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 260,
                          margin:
                              EdgeInsets.only(left: 15, top: 10, bottom: 10),
                          child: Text(
                              "🧧✨ Gong Xi Fa Cai! engjoy 50% off use \ncode 'CNY'. limited offer, first come first server✨",
                              style: TextStyle(
                                color: Colors.pink
                              ),
                              ),
                        ),
                        SizedBox(
                          width: 41,
                        ),
                        Container(
                          height: 70,
                          width: 80,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              // You can add decoration properties here if needed
                              ),
                          child: Image.asset(
                            "assets/images/earn_a_3/earn_a3.jpg", // Replace with your image asset path
                            fit: BoxFit
                                .cover, // Adjust the fit property as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 240,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 18, top: 15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    // color: Colors.pink,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: your_daily_deal_img.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 140,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 241, 241, 241),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 177, 175,
                                            175), // Set the color of the border
                                        width: 1,
                                        // Set the width of the border
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      )),
                                  margin: EdgeInsets.only(right: 20, top: 0),
                                  // decoration: BoxDecoration(color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/your_daily_deal/${your_daily_deal_img[index]}.jpg",
                                      height: 150,
                                      width: 140,
                                      // width: MediaQuery.of(context).size.width /
                                      //     1.4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 0),
                  //   child: Container(
                  //     height: 60,
                  //     width: double.infinity,
                  //     color: Color.fromARGB(255, 255, 255, 255),
                  //     child: Padding(
                  //       padding:
                  //           const EdgeInsets.only(left: 20, top: 23, bottom: 5),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Container(),
                  //           Text(
                  //             "Your daily deals",
                  //             style: TextStyle(
                  //                 fontSize: 22, fontWeight: FontWeight.bold),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
