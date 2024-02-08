// import 'dart:convert';
// import 'dart:html';

// import 'dart:ffi';
// import 'dart:io';
import 'dart:ffi';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_fanda_clone/detailsPage/detail_food_delivery.dart';
import 'package:food_fanda_clone/screens/nextscreen.dart';
import 'package:food_fanda_clone/screens/pick_up/pickUp_screen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'sliverAppbar/sliverAppbar.dart';
import 'sliverAppbar/myflexiableappbar.dart';
// import 'sliverAppbar/myappbar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List foods2 = ["Chicken Burger", "Cheese Pizza", "Bok Lhong", "Seafood Boil"];
    List cuisines1 = ["Pizza", "Milk Tea", "Pasta", "Hot Pot", "Burgers"];
        List cuisines2 = ["Chicken", "Sushi", "Pho", "Soups", "Salad"];
    List<Color> cuisinesColor = [
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
    ];

    // Popular Shop images
    List popular_shop_img = ["chipMong", "aeon", "lucky", "aeonMax"];
    List<Color> popularShopBg = [
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
    ];
    List shop_title1 = [
      "Chhip Mong",
      "    AEOn (Sen Sok",
      "Lucky",
      " Aeon MaxValue"
    ];
    List shop_title2 = [
      "   Supermarket(...",
      "     Supermarket)",
      "  Supermarket (...",
      "  Supermarket (..."
    ];
    List shop_staus = [
      "  Order for later",
      "     Order for later",
      " Order for later",
      "Order for later"
    ];

    // Restuarant near me
    List res_near_img = [
      "Brown Coffee (IFL)",
      "Sach Ang Beb Chen",
      "Taste Of Indian Hala",
      "Ti Ti Restaurant"
    ];

    //your daily deal
    List your_daily_deal_img = [
      "fav_drink",
      "aba_pay",
      "panda_send",
      "panda_pro",
      "save_upto",
      "new_user"
    ];

    // shop

    List shop_img = [
      "Groceries",
      "Convenience",
      "Beverages",
      "Beauty",
      "Health",
      "Electronics",
      "Flower",
      "Bakery"
    ];
    // var shop_2_outlined = Icons.shop_2_outlined;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/profile_pic.jpg"),
                
              ),
            ),
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text(
                'Help center',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.help_center),
            ),
            ListTile(
              title: Text(
                'More',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.more_horiz),
            ),
            ListTile(
              title: Text(
                'Sign up or Login ',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          iconSize: 35,
          color: Colors.white,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
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
            icon: FaIcon(
              FontAwesomeIcons.heart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body:  CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              floating:
                  true, // Set to true to hide FlexibleSpaceBar when scrolling up
              snap: true,
              expandedHeight: 75.5,
              excludeHeaderSemantics: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(background: MyFlexiableAppBar()),
              backgroundColor: Colors.pink,
            ),
      
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailFoodScreen()));
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color.fromARGB(101, 0, 0, 0)
                                  .withOpacity(0.09), // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/images/panda.jpg",
                                  width: 200,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Food delivery",
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Order food you love",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 10, right: 10, top: 0),
      
                        //  decoration: BoxDecoration(
                        //   color: Color.fromARGB(255, 244, 13, 102),
                        //   borderRadius: BorderRadius.circular(10),
                        //   border: Border.all(
                        //     color: Color.fromARGB(101, 0, 0, 0).withOpacity(0.09), // Border color
                        //     width: 1, // Border width
                        //   ),
                        // ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    height: 269,
                                    width: double.infinity,
                                    margin: EdgeInsets.only(bottom: 13),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(101, 0, 0, 0)
                                            .withOpacity(0.09), // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (builder) => Groceries()),
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Image.asset(
                                              "assets/images/bottle.jpg",
                                              width: 130,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Groceries",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Lucky, AEON, Chip",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  "Mong, Big C & more",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    // alignment: Alignment.center,
                                    height: 160,
                                    width: double.infinity,
                                    margin: EdgeInsets.only(top: 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(101, 0, 0, 0)
                                            .withOpacity(0.09), // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    PickUpScreen()));
                                      },
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Image.asset(
                                              "assets/images/pickup.jpg",
                                              width: 120,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Pick-up",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Up to 50% off",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    // alignment: Alignment.center,
                                    height: 100,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(101, 0, 0, 0)
                                            .withOpacity(0.09), // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset(
                                            "assets/images/pandasend.jpg",
                                            width: 70.5,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "pandasend",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Send a parcels",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "in a tap",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 0),
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Popular restaurants",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: SizedBox(
                                        height: 165.5,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount: foods2.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {},
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.4,
                                                margin: EdgeInsets.only(
                                                  left: 10,
                                                  top: 5,
                                                  bottom: 5,
                                                  right: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                 
                                                ),
                                                child: Stack(children: [
                                                  ClipRRect(
                                                   
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    child: Image.asset(
                                                      "assets/images/${foods2[index]}.jpg",
                                                      height: 125,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
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
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  foods2[index],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0)),
                                                                ),
                                                                Text(
                                                                  "...",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                SizedBox(
                                                                  width: 60,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons.star,
                                                                      color: Color(
                                                                          0xFFFF2F08),
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
                                                                      fontSize:
                                                                          16,
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                SizedBox(
                                                                  width: 2,
                                                                ),
                                                                Text(
                                                                  "(500+)",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Colors
                                                                          .black45),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      )),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 2),
                                                          child: Column(
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .pink,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      // topLeft: Radius.circular(10),
                                                                      topRight: Radius
                                                                          .circular(
                                                                              12),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  child: Padding(
                                                                    padding: EdgeInsets
                                                                        .symmetric(
                                                                            vertical:
                                                                                6,
                                                                            horizontal:
                                                                                8),
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
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
                                                              ]),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 4),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      23,
                                                                      22,
                                                                      23),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    // topLeft: Radius.circular(10),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12),
                                                                    bottomRight: Radius
                                                                        .circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              7,
                                                                          horizontal:
                                                                              8),
                                                                  child:
                                                                      Container(
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
                                                                              fontWeight: FontWeight.bold),
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
                                ], ///////
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
      
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cuisines",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 125,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: cuisines1.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 100,
                              margin: EdgeInsets.only(left: 15),
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: cuisinesColor[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
      
                             
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (builder) => Groceries()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 0, right: 0, bottom: 0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          "assets/images/${cuisines1[index]}.jpg",
                                          height: 90,
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  1.4,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        cuisines1[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 125,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: cuisines2.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 100,
                              margin: EdgeInsets.only(left: 15),
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: cuisinesColor[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 0, right: 0, bottom: 0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      child: Image.asset(
                                        "assets/images/${cuisines2[index]}.jpg",
                                        height: 90,
                                        width: MediaQuery.of(context).size.width /
                                            1.4,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      cuisines2[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
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
                                "Popular shops",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
      
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            margin: EdgeInsets.only(right: 10),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: SizedBox(
                              // height: 145,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: popular_shop_img.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      print(index);
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 125,
                                          width: 110,
                                          margin: EdgeInsets.only(left: 15),
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          decoration: BoxDecoration(
                                            color: popularShopBg[index],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            child: Image.asset(
                                              "assets/images/popular_shop/${popular_shop_img[index]}.jpg",
                                              height: 90,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.4,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 69,
                                          left: 0,
                                          right: 0,
                                          child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  width: 60,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "2 deals",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  shop_title1[index],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Text(
                                                  shop_title2[index],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Text(
                                                  shop_staus[index],
                                                  style: TextStyle(
                                                    // fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 148, 144, 144),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
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
                                "Pick up at a restaurant near you",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
      
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 246,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/restaurant_near_u/map.jpg",
                            height: 280,
                            width: 550,
                          ),
                          ListView.builder(
                            itemCount: res_near_img.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 22),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 15, bottom: 8),
                                      width: 330,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 204, 206, 208), // Border color
                                          width: 1,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1, top: 4),
                                            child: Container(
                                              width: 320,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                // color: Color.fromARGB(
                                                //     255, 204, 52, 52),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: Color.fromARGB(255, 204,
                                                      206, 208), // Border color
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // bottom: 139,
                                                    // left: 0,
                                                    // right: 73,
                                                    // top: 30,
                                                    child: Container(
                                                      width: 320,
                                                      height: 150,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                              "assets/images/restaurant_near_u/${res_near_img[index]}.jpg",
                                                            ),
                                                            fit: BoxFit.cover),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 10,
                                                    // height: 30,
                                                    // width: 30,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.pink,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(10),
                                                          bottomRight:
                                                              Radius.circular(10),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                vertical: 7,
                                                                horizontal: 8),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "15% OFF",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // bottom: 6,
                                            left: 20,
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      res_near_img[index],
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 100,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 17,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      "5.0",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text("(2)"),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 7,
                                                    ),
                                                    Text(
                                                      "1.5km away · Pick up in 10 min",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
      
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 0),
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
                    Container(
                      height: 240,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 18, top: 5),
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
      
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: Border.all(
                            color: Color.fromARGB(101, 0, 0, 0)
                                .withOpacity(0.09), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 80, top: 16),
                                  child: Text(
                                    "Become a pro",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 50),
                                  child: Text(
                                    "and get exclusive deals",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Transform.rotate(
                              angle: -math.pi / 18,
                              child: Container(
                                height: 50,
                                width: 80,
                                margin: EdgeInsets.only(left: 16, top: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 165, 163,
                                        163), // Set the color of the border
                                    width: 1.5,
                                    // Set the width of the border
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/become_a_pro/become_a_pro.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shops",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      child: SizedBox(
                        child: SizedBox(
                          height: 136,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: shop_img.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    print('Container $index tapped');
                                  },
                                  child: Container(
                                    width: 90,
                                    height: 80,
                                    margin: EdgeInsets.only(
                                        left: 15, bottom: 0, right: 0),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Container(
                                            width: 80,
                                            height: 80,
                                            margin: EdgeInsets.only(
                                              top: 0,
                                              bottom: 5,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 244, 243, 243),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.asset(
                                                  "assets/images/shop/${shop_img[index]}.jpg",
                                                  // fit: BoxFit.fill,
                                                  width: 80,
                                                  height: 60,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 4,
                                        // ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 25, top: 5),
                                          child: Text(
                                            shop_img[index],
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                            },
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 	20,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 14),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: Border.all(
                            color: Color.fromARGB(101, 0, 0, 0)
                                .withOpacity(0.09), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 40, top: 16, bottom: 0),
                                  child: Text(
                                    "Earn a \$3 voucher",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 18, right: 18, top: 0),
                                  child: Text(
                                    "when you refer a friend",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: double.infinity,
                              width: 80,
                              margin: EdgeInsets.only(left: 72, top: 0, right: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/earn_a_3/earn_a3.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: Border.all(
                            color: Color.fromARGB(101, 0, 0, 0)
                                .withOpacity(0.09), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 36, top: 16, bottom: 0),
                                  child: Text(
                                    "Try panda reward!",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 16, right: 13, top: 0),
                                  child: Text(
                                    "Earn point end win prizes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: double.infinity,
                              width: 80,
                              margin:
                                  EdgeInsets.only(left: 74.4, top: 0, right: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/try_panda_reward/try_panda_reward.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
      
            // backgroundColor: const Color.fromARGB(255, 225, 233, 234),
          ],
        ),
      
      
    );
  }
}
