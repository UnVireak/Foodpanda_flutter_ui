import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_fanda_clone/cubits/scroll_cubit.dart';
import 'package:food_fanda_clone/detailsPage/model_data.dart';
import 'package:food_fanda_clone/screens/home_screen.dart';
import 'package:food_fanda_clone/screens/sliverAppbar/myflexiableappbar.dart';
import 'package:food_fanda_clone/screens/sliverAppbar/myflexiableappbar_detail_screen.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DetailFoodScreen extends StatefulWidget {
  const DetailFoodScreen({super.key});

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String time;

  CardItem({required this.urlImage, required this.title, required this.time});
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      context.read<ScrollCubit>().setOffSet(_scrollController.offset);
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool click = true;
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;

  @override
  Widget build(BuildContext context) {
    List your_daily_deal_img = [
      "fav_drink",
      "aba_pay",
      "panda_send",
      "panda_pro",
      "save_upto",
      "new_user",
      "get"
    ];
    List<CardItem> items = [
      CardItem(urlImage: 'assets/images/Sh6.png', title: 'KFC', time: '25 min'),
      CardItem(
          urlImage: 'assets/images/Sh5.png',
          title: 'Yellow Cab Pizza',
          time: '30 min'),
      CardItem(
          urlImage: 'assets/images/Sh4.png',
          title: 'Pizza Hut',
          time: '40 min'),
      CardItem(
          urlImage: 'assets/images/Sh3.png',
          title: 'The Pizza Company',
          time: '40 min'),
      CardItem(
          urlImage: 'assets/images/Sh2.png', title: "Dayung's", time: '40 min'),
      CardItem(
          urlImage: 'assets/images/Sh1.png',
          title: "Texas Chicken",
          time: '40 min'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: BackButton(
          color: Colors.pink,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selected location",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Food delivery",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        //  backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.pink,),
            
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.pink,
              size: 26,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: false,
            floating:
                true, // Set to true to hide FlexibleSpaceBar when scrolling up
            snap: true,
            automaticallyImplyLeading: false,
            expandedHeight: 75.5,
            excludeHeaderSemantics: true,

            flexibleSpace: FlexibleSpaceBar(background: MyFlexiableAppBar_detail_screen()),
            // backgroundColor: Color.fromARGB(255, 245, 9, 87),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PromoteHeaderListView(),

                  PromoteBabyListView(your_daily_deal_img: your_daily_deal_img),
                  //Newbie
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            " Newbie ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            "                                          See all",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Burgers.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  "40% Newbie",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click = !click;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 33, 33, 31),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Featured",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Chicken Burger.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  "40% Newbie",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 33, 33, 31),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Featured",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Cheese Pizza.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  "40% Newbie",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 250, 226, 225),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "New",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.pink,
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
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Up to 50% off
                  const SizedBox(
                    height: 0,
                  ),
                  DiscountHeaderListView(),

                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/D2.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click2 = !click2;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click2 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                            Icons.percent_sharp,
                                                            size: 16,
                                                            color:
                                                                Colors.white),
                                                        Text(
                                                          " Up to 50% off",
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
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 33, 33, 31),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Featured",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Df1.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.percent_sharp,
                                                          size: 16,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          "Buy One Get One",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/D3.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 7,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                            Icons.percent_sharp,
                                                            size: 16,
                                                            color:
                                                                Colors.white),
                                                        Text(
                                                          " 25% OFF•",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          ' pro ',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.pink,
                                                              backgroundColor:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          '35% OFF',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 250, 226, 225),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "New",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.pink,
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
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          'Top brands',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 150,
                    // width: 400,
                    //    color: Colors.black,

                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      separatorBuilder: (context, _) => SizedBox(
                        width: 5,
                      ),
                      itemBuilder: (context, index) =>
                          buildCardLogo(item: items[index]),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            " Local Heroes ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "                                         See all",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Milk1.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click2 = !click2;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click2 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                            Icons.percent_sharp,
                                                            size: 16,
                                                            color:
                                                                Colors.white),
                                                        Text(
                                                          " Up to 50% off",
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
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 33, 33, 31),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Featured",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/Milk Tea.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.percent_sharp,
                                                          size: 16,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          "Buy One Get One",
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 250.0,
                                  width: 310.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              224, 203, 201, 201)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150.0,
                                              width: 310.0,
                                              decoration: BoxDecoration(
                                                color: Colors.pink,
                                              ),
                                              child: Image.asset(
                                                "assets/images/tea.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Positioned(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 222, 11, 82),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      8),
                                                          child: Container(
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .percent_sharp,
                                                                  size: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                Text(
                                                                  " Gift: Free delivery",
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
                                                  ),
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click1 = !click1;
                                                            });
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // Set the background color to transparent
                                                            elevation:
                                                                0, // Set the elevation to 0 to remove the shadow
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          3,
                                                                      vertical:
                                                                          3),
                                                              child: Icon(
                                                                  Icons
                                                                      .heart_broken_sharp,
                                                                  color: (click1 ==
                                                                          false)
                                                                      ? Colors
                                                                          .pink
                                                                      : Colors
                                                                          .grey),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 7,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                            Icons.percent_sharp,
                                                            size: 16,
                                                            color:
                                                                Colors.white),
                                                        Text(
                                                          " 25% OFF•",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          ' pro ',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.pink,
                                                              backgroundColor:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          '35% OFF',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              bottom: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 250, 226, 225),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "New",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.pink,
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
                                      SizedBox(
                                        height: 100.0,
                                        width: 310.0,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '3Hand Milk Tea (St.830)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                      ),
                                                      Text(
                                                        ' 2.8',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '(11)',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                r"$$ • Asian",
                                                style: TextStyle(
                                                  color: Color(0xff707070),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Color(0xff707070),
                                                  ),
                                                  Text(
                                                    ' 30 min • ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                  Icon(
                                                    Icons.directions_bike,
                                                    size: 14,
                                                    color: Colors.pink,
                                                  ),
                                                  Text(
                                                    ' Free ',
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 380,
                      height: 170,
                      // color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 100,
                                  height: 70,
                                  child: Image.asset('assets/images/ph.jpg'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: Text(
                                      r'Refer friends and get $ 3.00 ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Center(
                                        child: Text(
                                          'Find out now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Text(
                          'All resturants',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          MultiSliver(pushPinnedChildren: true, children: [
            MenubarRestaurant(),
            SliverList(
                delegate: SliverChildBuilderDelegate(childCount: 20,
                    (context, index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
              );
            })),
            Container(
                child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click3 = !click3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click3 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ' Cambodia food Claypot Rice (Kh...)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 2.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(11)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'pro',
                                            style: TextStyle(
                                                backgroundColor: Colors.white,
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            ' 45% OFF ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://img.freepik.com/free-photo/grilled-burger-french-fries-food-generative-ai_188544-8516.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click1 = !click1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click1 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ' Best Free Food Pictures',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 2.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(11)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'pro',
                                            style: TextStyle(
                                                backgroundColor: Colors.white,
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            ' 45% OFF ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2018/10/25/06/00/khmer-food-3771719_1280.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click3 = !click3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click3 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ' Khmer Food',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 4.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(11)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'pro',
                                            style: TextStyle(
                                                backgroundColor: Colors.white,
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            ' 45% OFF ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://ourbigescape.com/wp-content/uploads/2023/04/6.-Cambodian-Food-Khmer-Fish-Amok-Recipe.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click = !click;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ' Cambodian Fish Amok',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 5.0 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(500+)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 10% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://m.media-amazon.com/images/S/aplus-media-library-service-media/7f361cfb-7d7b-4f52-8def-f4891732dd14.__CR0,0,600,450_PT0_SX600_V1___.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click2 = !click2;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click2 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '  PRIME Hydration LEMONADE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 5.0 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(500+)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://i.ytimg.com/vi/nBoShadK7i8/maxresdefault.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click1 = !click1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click1 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 34, 31, 31)
                                      .withOpacity(
                                          0.8), // Set the background color
                                ),
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Popular snack in Cambodia',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 2.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(11)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'pro',
                                            style: TextStyle(
                                                backgroundColor: Colors.white,
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            ' 45% OFF ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://images.deliveryhero.io/image/fd-kh/LH/nt3y-hero.jpg?width=512&height=384&quality=45',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click3 = !click3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click3 == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ' Café Amazon (Library)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 3.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(200+)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' Gift: Free delivery',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'pro',
                                            style: TextStyle(
                                                backgroundColor: Colors.white,
                                                color: Colors.pink,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            ' 45% OFF ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(224, 203, 201, 201)),
                        borderRadius: BorderRadius.circular(10)),
                    width: 380,
                    height: 320,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.9), // Adjust the opacity value as needed (0.0 to 1.0)
                            ),
                            width: 380,
                            height: 190,
                            child: Image.network(
                              'https://www.shutterstock.com/image-photo/khmer-noodles-natural-vegetables-white-260nw-2156544579.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  click = !click;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .transparent, // Set the background color to transparent
                                elevation:
                                    0, // Set the elevation to 0 to remove the shadow
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      0.8), // Set the background color
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.heart, size: 15,
                                  color: (click == false)
                                      ? Colors.pink
                                      : Colors
                                          .black, // Set the color of the icon
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 128.0,
                        width: 380.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Khmer Soup Photos',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        ' 4.8 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '(700+)',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                r"$$$ • Khmer",
                                style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xff707070),
                                  ),
                                  Text(
                                    ' 30 min • ',
                                    style: TextStyle(color: Color(0xff707070)),
                                  ),
                                  Icon(
                                    Icons.directions_bike,
                                    size: 14,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    ' Free ',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    // color: Colors.pink,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.idBadge,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' 30% OFF • ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10))
              ],
            ))
          ]),
        ],
      ),
    );
  }

  Widget buildCardLogo({required CardItem item}) => Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SizedBox(
          width: 95,
          height: 150,
          child: Center(
            child: Column(children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 95,
                    height: 80,
                    color: Color.fromARGB(223, 240, 239, 239),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 70,
                        height: 50,
                        child: Image.asset(
                          item.urlImage,
                          height: 80,
                          width: 700,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Text(
                    item.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(child: Text(item.time)),
            ]),
          ),
        ),
      );
}

class MenubarRestaurant extends StatelessWidget {
  const MenubarRestaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
        child: BlocBuilder<ScrollCubit, double>(builder: (context, state) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            width: 1,
            color: state >= 1700
                ? const Color.fromARGB(224, 203, 201, 201)
                : Colors.white,
          )),
          color: state >= 1700 ? Colors.white : Colors.transparent,
        ),
        padding: EdgeInsets.only(top: 10, bottom: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 197, 198, 194)),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.slidersH,
                          size: 12,
                        ))),
                SizedBox(
                  width: 10,
                ),
                MenuRetaurants(
                  title: 'Sort',
                  mcon: ' >',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuRetaurants(
                  title: 'Cuisines',
                  mcon: ' >',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuRetaurants(
                  title: 'Offers',
                  mcon: ' >',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuRetaurants(
                  title: 'Ratings',
                  mcon: ' 4.0+',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuRetaurants(
                  title: 'Halal',
                  mcon: ' 4.0+',
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}

List<String> options = ['Relevance (default)', 'Fast delivery','Distance'];

class MenuRetaurants extends StatefulWidget {
  String title;
  String mcon;

  MenuRetaurants({
    super.key,
    required this.title,
    required this.mcon,
  });

  @override
  State<MenuRetaurants> createState() => _MenuRetaurantsState();
}

class _MenuRetaurantsState extends State<MenuRetaurants> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            builder: ((context) {
              return Container(
                width: 410,
                height: 370,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Sort by',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text('Relevance (default)',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Radio(
                            value: options[0],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                            activeColor: Colors.pink,
                            ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text('Fast delivery',
                            style: TextStyle(
                                 fontSize: 18)),
                        Radio(
                            value: options[1],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                            
                            ),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text('Distance',
                            style: TextStyle(
                                 fontSize: 18)),
                        Radio(
                            
                            value: options[2],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 400,
                    height: 1,
                    color: Color.fromARGB(224, 203, 201, 201),
                  ),
                  SizedBox(height: 26,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 350,
                      height: 60,
                      color: Colors.pink,
                      child: Center(child: const Text('Apply', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
                    ),
                  )
                ]),
              );
            }));
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(width: 1, color: Color.fromARGB(255, 197, 198, 194)),
          ),
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.mcon),
            ],
          )),
    );
  }
}

class DiscountHeaderListView extends StatelessWidget {
  const DiscountHeaderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              " Up to 50% off ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "                                        See all",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class PromoteBabyListView extends StatelessWidget {
  const PromoteBabyListView({
    super.key,
    required this.your_daily_deal_img,
  });

  final List your_daily_deal_img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      // color: Colors.pink,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          //shrinkWrap: true,
          itemCount: your_daily_deal_img.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 155.0,
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
                      margin: EdgeInsets.only(right: 10, top: 0),
                      // decoration: BoxDecoration(color: Colors.blue),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/your_daily_deal/${your_daily_deal_img[index]}.jpg",
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class PromoteHeaderListView extends StatelessWidget {
  const PromoteHeaderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Container(
        width: 420,
        height: 80,
        color: Color.fromARGB(255, 251, 236, 241),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: 70,
                  width: 220,
                  child: Text(
                    'want coffee? enjoy 25% 0ff from\nStarkbucks coffee',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 80,
                child: Image.asset(
                  'assets/images/phone.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
