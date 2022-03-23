import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app_phase1/Constant.dart';
import 'package:food_app_phase1/Screens/DetailsHome.dart';
import 'package:food_app_phase1/Screens/Offers.dart';
import 'Screens/Cart.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Gilroy"),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexx = 0;

  final screens = [
    DetailPage(),
    OfferScreen(),
    FinalCartMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexx],
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 240, 236, 236),
        // backgroundColor: Color.fromARGB(255, 240, 236, 236),
        buttonBackgroundColor: Colors.orange,
        animationDuration: Duration(milliseconds: 400),
        items: itemss,
        index: indexx,
        onTap: (index) => setState(() => this.indexx = index),
        backgroundColor: Colors.transparent,
      ),
    );

    //ComparsionPage();
    //DetailPage();
    //    RestaurantMenu();
    // FinalCartMenu();
    // OfferScreen();
    // ManagePayment();
    //   MapScreen();
  }
}
