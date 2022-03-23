import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:food_app_phase1/Constant.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                //for ICON house, fresno and edit address.....
                padding: EdgeInsets.only(
                    top: size.height / 20, left: size.width / 40),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: size.width / 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '21-42-34 Fresno University',
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
              ),

              //SEARCH BOX........

              Container(
                margin: EdgeInsets.symmetric(horizontal: 45, vertical: 14),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: size.height * .04,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, 5),
                      blurRadius: 2,
                      color: Color.fromARGB(255, 109, 106, 106),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  showCursor: false,
                  decoration: InputDecoration(
                    hintText: 'Search food nearby ',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 59, 59, 58),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

              //HAPPY DEALS TEXT

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                color: Colors.white,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Happy Deals',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 26),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Reslish a binge with our biggest offers.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
              //BIG BOX WITH TEXT-Rescued food.....
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 5,
                        color: Colors.red,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.orange,
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(252, 163, 132, 1),
                          Color.fromRGBO(251, 106, 112, 1)
                        ])),
                height: size.height / 5,
                width: size.width,
                child: Stack(
                  children: [
                    //TEXT LEFT TO IMAGE IN BIG BOX
                    Positioned(
                      left: 15,
                      top: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rescued Food',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            'Saving food and hunger.',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Left over food and\nsupplies are gathered\nfrom food venders and \nchefs, and are sold for\n50% off!',
                            style: TextStyle(
                                //fontStyle: FontStyle.italic,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            maxLines: 5,
                          )
                        ],
                      ),
                    ),

                    //IMAGE ON BIG BOX
                    Positioned(
                      right: -5,
                      bottom: 4,
                      child: Image.asset(
                        'assets/images/okOffers.png',
                        height: size.height / 4.8,
                      ),
                    )
                  ],
                ),
              ),

              //two boxes colorful

              Row(
                children: [
                  //first box................
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      height: size.height / 5.5,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 5,
                              color: Colors.red,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.red, Colors.pink])),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LAARGE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  'DISCOUNTS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Upto \$120 OFF',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                                Text(
                                  'No upper limit!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FontStyle.normal),
                                )
                              ],
                            ),
                          ),

                          //BURGER IMAGE ON BOX..........
                          Positioned(
                            top: size.height / 10,
                            left: size.width / 5,
                            child: Image.asset(
                              'assets/images/burger.png',
                              height: size.height / 8.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //SECOND BOX........................
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      height: size.height / 5.5,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 5,
                              color: Colors.red,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.pink,
                                Color.fromARGB(255, 243, 91, 142)
                              ])),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TRY NEW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Explore unique tastes',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                                Text(
                                  'from new eatries',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FontStyle.normal),
                                )
                              ],
                            ),
                          ),

                          //SECOND BOX IMAGE.............
                          Positioned(
                            top: size.height / 10,
                            left: size.width / 5,
                            child: Image.asset(
                              'assets/images/veg.png',
                              height: size.height / 8.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: size.height / 24,
              ),
              // ZERO HEIGHT CONTAINER...................

              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                height: 3,
                color: Color.fromARGB(255, 216, 210, 210),
              ),

              SizedBox(
                height: size.height / 45,
              ),

              //EXCLUSIVELY TEXT.............

              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exclusively on FastFood',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Deal-icious offers from top brands!',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              //HORIZONTAL LIST VIEW ...........

              Container(
                margin: EdgeInsets.symmetric(vertical: size.height / 80),
                height: size.width / 3.8,
                width: size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    children: [
                      //this swidget should be extracted

                      foodtabs(
                          'UP TO 33% OFF',
                          'on KFC',
                          'assets/images/pngegg-3.png',
                          Colors.white,
                          Color.fromARGB(255, 207, 8, 8),
                          context),

                      foodtabs(
                          'UP TO 60% OFF',
                          'on BOWL COMPANY',
                          'assets/images/pngegg-3.png',
                          Colors.white,
                          Colors.deepOrange,
                          context),
                      foodtabs(
                          'UP TO 40% OFF',
                          'on MCDONALDs',
                          'assets/images/pngegg-3.png',
                          Colors.white,
                          Color.fromARGB(255, 224, 205, 34),
                          context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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

Widget foodtabs(String title, String text, String assetmage, Color iconColor,
    Color color, BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Stack(
    overflow: Overflow.visible,
    children: [
      Container(
        width: size.width / 2.9,
        margin: EdgeInsets.all(7),
        height: size.height * .5,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 2,
            color: Colors.black38,
          ),
        ], color: color, borderRadius: BorderRadius.circular(20)),
      ),

      // text inside red box..
      Positioned(
        left: size.width / 25,
        top: size.height / 20,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
      Positioned(
        left: size.width / 7,
        top: -size.height / 100,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: iconColor,
          child: Image.asset(
            assetmage,
          ),
        ),
      ),
    ],
  );
}







// return Container(
//     width: size.width / 3,
//     margin: EdgeInsets.symmetric(horizontal: 5),
//     //height: size.height * .5,
//     decoration:
//         BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
//     child: Stack(
//       overflow: Overflow.visible,
//       children: [
//         Positioned(
//           left: size.width / 25,
//           top: size.height / 35,
//           child: Column(
//             //mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(title),
//               Text(
//                 text,
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
//               )
//             ],
//           ),
//         ),
//         Positioned(
//           left: size.width / 9,
//           top: -size.height / 30,
//           child: CircleAvatar(
//             radius: 25,
//             backgroundColor: iconColor,
//             child: Image.asset(assetmage),
//           ),
//         ),
//       ],
//     ),
//   );
// }
