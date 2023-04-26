import 'package:flutter/material.dart';

class CustomCircleAvatar extends CircleAvatar {

  CustomCircleAvatar({super.key,
    required int ballNumber,
    required double radius,
    required double fontSize,
  }) : super(
    radius: radius,
    backgroundColor: getColor(ballNumber),
    child: Text(
      ballNumber.toString(),
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white
      ),
    )
  );

  static Color getColor(int ballNumber) {
    if(ballNumber <10) {
      return Colors.amber;
    }
    if(ballNumber <20) {
      return Colors.blue;
    }
    if(ballNumber < 30) {
      return Colors.redAccent;
    }
    if(ballNumber < 40) {
      return Colors.grey;
    }
    return Colors.deepPurpleAccent;
  }
}