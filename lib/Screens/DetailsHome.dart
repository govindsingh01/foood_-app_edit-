import 'package:flutter/material.dart';
import '../Constant.dart';
import '../Widgetss/FoodItems.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../Widgetss/SearchBar.dart';
import 'Cart.dart';
import 'Offers.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailsPagState();
}

class _DetailsPagState extends State<DetailPage> {
  // int indexx = 0;

  // final screens = [
  //   DetailPage(),
  //   OfferScreen(),
  //   FinalCartMenu(),
  // ];

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
                  'assets/images/foood.png',
                ),
              ),
            ),
          ),
          // Top address
          Positioned(
            top: 55,
            left: 18,
            child: Row(
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 32,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '21-42-34,Fresno University',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          //  scrollable Column
          Padding(
            padding: EdgeInsets.only(top: heightt / 3.2),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              width: widthh,
              //height: heightt,
              child: SingleChildScrollView(
                  // physics: BouncingScrollPhysics(),
                  child: Column(
                children: [
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: restaurantsAvalible(size),
                  ),
                ],
              )),
            ),
          ),
          searchBox(heightt: heightt)
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Color.fromARGB(255, 240, 236, 236),
      //   // backgroundColor: Color.fromARGB(255, 240, 236, 236),
      //   buttonBackgroundColor: Colors.orange,
      //   animationDuration: Duration(milliseconds: 400),
      //   items: itemss,
      //   index: indexx,
      //   onTap: (index) => setState(() => this.indexx = index),
      //   backgroundColor: Colors.transparent,
      // ),
    );
  }
}
