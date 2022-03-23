import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_phase1/Constant.dart';

import '../Widgetss/MenuItemBuider.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // food photo......
          Container(
            height: heightt / 2.8,
            width: widthh,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/pizzaa.png',
                ),
              ),
            ),
          ),
          // Top Rating container....
          Positioned(
            top: 55,
            right: 30,
            child: Container(
              height: heightt / 25,
              width: widthh / 3.4,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 50,
                      spreadRadius: 2,
                    ),
                  ],
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(32)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  children: [
                    Stack(
                      //for two combine circles........
                      overflow: Overflow.visible,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 165, 161, 161),
                          size: 22,
                        ),
                        Positioned(
                          left: 12,
                          child: Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 165, 161, 161),
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Icon(
                      Icons.star_rate,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          //  Main  box attaching with Searchbox.......
          Padding(
            padding: EdgeInsets.only(top: heightt / 3.2),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              width: widthh,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),

                //Column having scrollbale + orange container........
                child: Column(
                  children: [
                    //Scrollable list in ...........
                    Container(
                      height: size.height / 2.0,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListView.builder(
                          itemCount: menuCartList.length,
                          itemBuilder: (context, index) {
                            return MenuItemBuilder(size, index, context);
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //orange container with total amount and NEXT button........
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: heightt / 15,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(66, 202, 196, 196),
                              offset: Offset(0, 2),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                          ],
                          color: Color.fromRGBO(255, 120, 91, 1),
                          borderRadius: BorderRadius.circular(28)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 20),
                        child: Row(
                          children: [
                            Text(
                              '3 items',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(width: widthh / 6),
                            Text(
                              '\$ 325',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(width: widthh / 6),
                            GestureDetector(
                              onTap: null,
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'Next ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
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
            ),
          ),

          //Pista house stag rounded container......
          Positioned(
            top: heightt / 3.5,
            left: widthh / 16,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //for Two text in column.......
                children: [
                  Text(
                    'Pista House',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Near Fresno University',
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  )
                ],
              ),
              height: heightt / 16,
              width: widthh / 2.3,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(32)),
            ),
          ),

//left text to 30 min time.........
          Positioned(
            child: Container(
              color: Colors.white,
              child: Text(
                'DoorDash',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            top: size.height / 3,
            right: widthh / 4.2,
          ),

          //30 min small container......
          Positioned(
              top: size.height / 3,
              // left: 0,
              right: 28,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Time Circle.svg',
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '30 min',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 240, 236, 236),
        // backgroundColor: Color.fromARGB(255, 240, 236, 236),
        buttonBackgroundColor: Colors.orange,
        animationDuration: Duration(milliseconds: 300),
        items: itemss,
        index: index,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
