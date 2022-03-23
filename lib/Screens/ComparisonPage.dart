import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';
import '../Widgetss/DeliveryBuilder.dart';
import '../Widgetss/FoodItems.dart';

import '../Widgetss/SearchBar.dart';

class ComparsionPage extends StatefulWidget {
  const ComparsionPage({Key? key}) : super(key: key);

  @override
  State<ComparsionPage> createState() => _ComparsionPageState();
}

class _ComparsionPageState extends State<ComparsionPage> {
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
                padding: const EdgeInsets.only(top: 55),
                child: Column(
                  children: [
                    //top image of Pista House in column.....

                    Container(
                      height: size.height / 5.8,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/PistaHouse.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    //Scrollable list in Pista house...........
                    Container(
                      height: size.height / 2.7,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 4),
                            blurRadius: 20,
                            spreadRadius: -1,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: ListView.builder(
                          itemCount: deliveryList.length,
                          itemBuilder: (context, index) {
                            return DeliveryItemBuilder(size, index, context);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          searchBox(heightt: heightt),

          //Pista house stag rounded container......
          Positioned(
            top: heightt / 1.95,
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
              height: heightt / 18,
              width: widthh / 2.5,
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
          Positioned(
              top: size.height * .51,
              // left: 0,
              right: 28,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 20,
                // color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Time Circle.svg',
                      color: Colors.black,
                      width: 10,
                      // width: 18.0,
                      // height: 18.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '30 ',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'min',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ))
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
