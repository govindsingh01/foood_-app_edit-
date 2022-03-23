import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_phase1/Constant.dart';
import 'package:food_app_phase1/main.dart';

import '../Widgetss/MenuItemBuider.dart';

class FinalCartMenu extends StatefulWidget {
  @override
  State<FinalCartMenu> createState() => _FinalCartMenuState();
}

class _FinalCartMenuState extends State<FinalCartMenu> {
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
                  'assets/images/PistaHouse.png',
                ),
              ),
            ),
          ),

          //  Main  box attaching with Searchbox.......
          Padding(
            padding: EdgeInsets.only(top: heightt / 5),
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
                    // YOUR ORDER WITH CANCEL ORDER
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: widthh / 1.1,
                      // color: Colors.red,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your Order',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(Icons.cancel_outlined)
                          ],
                        ),
                      ),
                    ),

                    //BIG LIGHT YELLOW BOX
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      height: heightt / 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(254, 235, 193, 1)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //for ICON house, fresno and edit address...
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      size: widthh / 9,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Fresno University',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '21-42-34 University',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //edit address small button.....
                              GestureDetector(
                                child: Text(
                                  'Edit Address',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: null,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightt / 50,
                          ),

                          // small yellow boxv timer with 30 min..........
                          Row(
                            children: [
                              SizedBox(
                                width: widthh / 50,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(230, 182, 78, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.all(5),
                                child: SvgPicture.asset(
                                  'assets/images/Time Circle.svg',
                                  color: Colors.black,
                                  height: heightt / 38,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '30 mins',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // LIST OF CART ITEMS WITH ADD & PRICE
                    Container(
                      height: size.height / 5,
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
                      height: 5,
                    ),
                    // COUPEN PROMO CODE + APPLY BUTTON.....
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          height: heightt * .055,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                // offset: Offset(0, 5),
                                blurRadius: 2,
                                color: Color.fromARGB(255, 219, 214, 214),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Promo Code',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 59, 59, 58),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),

                        //ORANGE APPLY BUTTON ON COUPEN BOX
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: heightt * .055,
                            width: widthh / 3.2,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(66, 202, 196, 196),
                                    // offset: Offset(0, 2),
                                    blurRadius: 4,
                                    // spreadRadius: 3,
                                  ),
                                ],
                                color: Color.fromRGBO(255, 120, 91, 1),
                                borderRadius: BorderRadius.circular(28)),
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //SUBTOTAL BOX
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, left: 25, right: 25, bottom: 10),
                      margin: EdgeInsets.all(10),
                      height: heightt / 10,
                      decoration: BoxDecoration(
                          // color: Colors.greenAccent,
                          boxShadow: [
                            BoxShadow(
                              // offset: Offset(0, 5),
                              blurRadius: 5,
                              color: Color.fromARGB(255, 219, 214, 214),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Delivery',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\$325',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                '\$45',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              Text(
                                '\$345',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),

                    //  PAYMENT orange container WITH RIGHT ARROW........
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        height: heightt / 18,
                        width: widthh / 2,
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
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Payment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Color.fromARGB(255, 240, 236, 236),
      //   // backgroundColor: Color.fromARGB(255, 240, 236, 236),
      //   buttonBackgroundColor: Colors.orange,
      //   animationDuration: Duration(milliseconds: 300),
      //   items: itemss,
      //   index: index,
      //   backgroundColor: Colors.transparent,
      // ),
    );
  }
}
