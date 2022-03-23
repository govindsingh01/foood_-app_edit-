import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../Constant.dart';

Widget restaurantsAvalible(Size size) {
  return Container(
    //margin: EdgeInsets.only(top: 30),
    color: Colors.transparent,
    height: size.height * .63,
    width: size.width,
    child: ListView.builder(
        //physics: FixedExtentScrollPhysics(),
        itemCount: restaurantList.length,
        itemBuilder: (context, index) {
          return itemBuilder(size, index, context);
        }),
  );
}

Widget itemBuilder(Size size, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
    child: Material(
      //  color: Colors.transparent,
      child: InkWell(
        onTap: (() {
          print('okokok');
        }),
        child: Container(
          height: size.height / 3.1,
          width: size.width / 1.1,
          child: Column(
            children: [
              Container(
                //food image

                height: size.height / 5.8,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(restaurantList[index].imageUrl),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 15,
                      left: -8,
                      child: SvgPicture.asset(
                        'assets/images/Rectangle 3.svg',
                        width: 24,
                        height: 24,
                        color: Colors.orange,
                      ),
                    ),

                    //discount svg....................

                    Positioned(
                      top: 18,
                      left: -5,
                      child: Text(
                        restaurantList[index].discount,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        top: size.height * .13,
                        left: 5,
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
                                color: Colors.black,
                                width: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '30',
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'min',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),

              //2.Restaurant Name and Rating Container.......

              Container(
                color: Colors.white, //amberr
                height: size.height / 7,
                width: size.width / 1.2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              restaurantList[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              restaurantList[index].locations,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            //small green Rating box.....
                            Container(
                              height: size.height / 35,
                              width: size.width / 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green,
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    restaurantList[index].rating,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Star 17.svg',
                                    width: 15,
                                    height: 15,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Time Circle.svg',
                                  color: Colors.red,
                                  width: 10,
                                  // width: 18.0,
                                  // height: 18.0,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'min',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 22),

                    //Left over food........

                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            height: .5,
                            color: Color.fromRGBO(146, 146, 140, 0.655)),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Left over food and supplies are gathered and sold for 50% off!',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(146, 146, 140, 0.655)),
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
}
