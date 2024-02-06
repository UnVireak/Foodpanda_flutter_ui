import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_fanda_clone/screens/sliverAppbar/myflexiableappbar.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
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

    List your_daily_deal_img = [
      "fav_drink",
      "aba_pay",
      "panda_send",
      "panda_pro",
      "save_upto",
      "new_user"
    ];

    List cuisines1 = ["Pizza", "Milk Tea", "Pasta", "Hot Pot", "Burgers"];
    List<Color> cuisinesColor = [
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
      Color.fromARGB(255, 245, 249, 250),
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shops",
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for shops and products',
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    size: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: double.infinity,
            child: SizedBox(
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  itemCount: shop_img.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          print('Container $index tapped');
                        },
                        child: Container(
                          width: 90,
                          height: 90,
                          margin: EdgeInsets.only(
                              left: 10, bottom: 0, right: 38, top: 15),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Container(
                                  width: 80,
                                  height: 85,
                                  margin: EdgeInsets.only(
                                    top: 0,
                                    bottom: 0,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 243, 243),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
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
                                margin: EdgeInsets.only(
                                  bottom: 0,
                                  top: 30,
                                ),
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
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 0),
            child: Container(
              height: 60,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 23, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Save big on your groceries",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
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
          Container(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Material(
                    child: Container(
                      height: 65,
                      color: Colors.white,
                      child: TabBar(
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, right: 10, left: 10),
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.pinkAccent,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.pinkAccent, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "All",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.pinkAccent, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Beauty",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.pinkAccent, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Health",
                                  style: TextStyle(fontSize: 15),
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
            ),
          ),
          Column(
            children: [
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                width: double.infinity,
                child: SizedBox(
                  child: SizedBox(
                    height: 400,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: shop_img.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              print('Container $index tapped');
                            },
                            child: Container(
                              width: 90,
                              height: 150,
                              margin: EdgeInsets.only(
                                  left: 10, bottom: 0, right: 38, top: 15),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        width: 100,
                                        height: 95,
                                        margin: EdgeInsets.only(
                                          top: 0,
                                          bottom: 0,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 244, 243, 243),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
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
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 0,
                                        top: 30,
                                      ),
                                      child: Text(
                                        shop_img[index],
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
