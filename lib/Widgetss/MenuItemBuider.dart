import 'package:flutter/material.dart';
import 'package:food_app_phase1/Constant.dart';

Widget MenuItemBuilder(Size size, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 2.0,
      right: 2,
      bottom: 10,
    ),
    child: Container(
      height: size.height / 11,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image in front of every price + food name....
            Row(
              children: [
                Container(
                  height: size.height / 11,
                  width: size.width / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(menuCartList[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: size.width / 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  //name of every food with rest name in coulumn...
                  children: [
                    Text(
                      menuCartList[index].name,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pista House',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),

            //add + price...........
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: size.height / 26,
                  width: size.width / 5.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 3,
                        color: Color.fromRGBO(255, 120, 91, 1),
                      ),
                      color: Colors.white),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 120, 91, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  deliveryList[index].amount,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
