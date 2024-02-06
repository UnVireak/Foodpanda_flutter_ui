import 'package:flutter/material.dart';
import 'package:food_fanda_clone/screens/pick_up/sliverAppbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PickUpScreen extends StatelessWidget {
  // const PickUpScreen({super.key});
  List foods2 = ["Chicken Burger", "Cheese Pizza"];
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
             Navigator.pop(context);
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Phnom Penh",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Pick-up",
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
                            style: TextStyle(color: Colors.pink),
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
                                ),
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

                  Container(
                    height: 210,
                    width: 378,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color:
                            Color.fromARGB(255, 204, 206, 208), // Border color
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/pick_up_screen/explore_restaurant.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 15, top: 13, bottom: 5),
                                  child: Text(
                                    "Explore restaurants \n around you",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.only(top: 10, right: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    child: Text(
                                      "Show map",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                    ),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20% off Drinks",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: foods2.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                margin: EdgeInsets.only(
                                  left: 10,
                                  top: 5,
                                  bottom: 5,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Color.fromARGB(255, 255, 255, 255),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       color: Colors.black12,
                                  //       blurRadius: 4,
                                  //       spreadRadius: 2),
                                  // ],
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    // borderRadius: BorderRadius.only(
                                    //   topLeft: Radius.circular(10),
                                    //   topRight: Radius.circular(10),
                                    // ),
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/${foods2[index]}.jpg",
                                      height: 125,
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 2,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 20),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    foods2[index],
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                  ),
                                                  Text(
                                                    "...",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xFFFF2F08),
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    "4.7",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    "(500+)",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black45),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 190),
                                                  child:
                                                      Text(r'$ · Tea & Coffee'),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 210),
                                                  child: Text(
                                                    "4.9 km away",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 2),
                                          child: Row(children: [
                                            Container(
                                              width: 80,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 255, 0, 85),
                                                borderRadius: BorderRadius.only(
                                                  // topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(12),
                                                  bottomRight:
                                                      Radius.circular(12),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 6, horizontal: 8),
                                                child: Container(
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "15% OFF",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 170,
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(),
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5,
                                                            vertical: 6),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.heart,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 12, 12, 12),
                                                      size: 15,
                                                    ),
                                                  ),
                                                ))
                                          ]),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 4),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 23, 22, 23),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    // topLeft: Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(12),
                                                    bottomRight:
                                                        Radius.circular(12),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 7,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Top restaurant",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 140,
                    width: 378,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color:
                            Color.fromARGB(255, 204, 206, 208), // Border color
                        width: 1,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                                "assets/images/pick_up_screen/refer_friend.jpg"),
                          )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // height: 20,
                              margin: EdgeInsets.only(top: 23),
                              width: 180,
                              decoration: BoxDecoration(),
                              child: Text(
                                "Refer driends and get\n\$ 3.00",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              //   height: 20,
                              // width: 20,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 201, 18, 79),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                child: Text(
                                  "Find out now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                    ),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All restaurants",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: 378,
                    height: 245,
                    // width: MediaQuery.of(context).size.width / 1.4,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 5,
                      bottom: 10,
                      right: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(10),
                          //   topRight: Radius.circular(10),
                          // ),
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/Chicken Burger.jpg",
                            height: 160,
                            // width: MediaQuery.of(context).size.width /
                            //     1.4,
                            width: 378,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 2,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chicken Burger",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                        Text(
                                          "...",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFF2F08),
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "(500+)",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black45),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 272),
                                        child: Text(r'$ · Tea & Coffee'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 290),
                                        child: Text(
                                          "4.9 km away",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Row(children: [
                                  Container(
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 0, 85),
                                      borderRadius: BorderRadius.only(
                                        // topLeft: Radius.circular(10),
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 8),
                                      child: Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "15% OFF",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(),
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 6),
                                          child: FaIcon(
                                            FontAwesomeIcons.heart,
                                            color: const Color.fromARGB(
                                                255, 12, 12, 12),
                                            size: 15,
                                          ),
                                        ),
                                      ))
                                ]),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 23, 22, 23),
                                        borderRadius: BorderRadius.only(
                                          // topLeft: Radius.circular(10),
                                          topRight: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 8),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Top restaurant",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 378,
                    height: 245,
                    // width: MediaQuery.of(context).size.width / 1.4,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 5,
                      bottom: 10,
                      right: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(10),
                          //   topRight: Radius.circular(10),
                          // ),
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/Chicken Burger.jpg",
                            height: 160,
                            // width: MediaQuery.of(context).size.width /
                            //     1.4,
                            width: 378,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 2,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chicken Burger",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                        Text(
                                          "...",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFF2F08),
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "(500+)",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black45),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 272),
                                        child: Text(r'$ · Tea & Coffee'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 0, right: 290),
                                        child: Text(
                                          "4.9 km away",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Row(children: [
                                  Container(
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 0, 85),
                                      borderRadius: BorderRadius.only(
                                        // topLeft: Radius.circular(10),
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 8),
                                      child: Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "15% OFF",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(),
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 6),
                                          child: FaIcon(
                                            FontAwesomeIcons.heart,
                                            color: const Color.fromARGB(
                                                255, 12, 12, 12),
                                            size: 15,
                                          ),
                                        ),
                                      ))
                                ]),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 23, 22, 23),
                                        borderRadius: BorderRadius.only(
                                          // topLeft: Radius.circular(10),
                                          topRight: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 8),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Top restaurant",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
