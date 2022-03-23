import 'package:flutter/material.dart';

class searchBox extends StatelessWidget {
  const searchBox({
    Key? key,
    required this.heightt,
  }) : super(key: key);

  final double heightt;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: heightt / 3.45,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: heightt * .06,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 50,
              color: Color.fromARGB(255, 109, 106, 106),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search food nearby ',
            hintStyle: TextStyle(
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 59, 59, 58),
                fontSize: 20,
                fontWeight: FontWeight.w600),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
