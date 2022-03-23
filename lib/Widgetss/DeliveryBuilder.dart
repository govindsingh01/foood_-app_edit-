import 'package:flutter/material.dart';
import 'package:food_app_phase1/Constant.dart';

Widget DeliveryItemBuilder(Size size, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 20),
    child: Container(
      height: size.height / 17,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            // offset: Offset(0, 2),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              deliveryList[index].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              deliveryList[index].amount,
              style: TextStyle(
                  fontSize: 18.63,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            )
          ],
        ),
      ),
    ),
  );
}
