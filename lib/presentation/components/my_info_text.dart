import 'package:flutter/material.dart';
import 'package:my_quiz_app/damein/madels/UserData.dart';

Widget MyInfoText(int correctAnswers) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      children: [
        TextSpan(
          text: "Assalom alekum \n",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900,color: Colors.black),
        ),
        TextSpan(
          text: "${UserData.instance.lastName} ",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.green, 
          ),
        ),
        TextSpan(
          text: "${UserData.instance.firstName} ",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        TextSpan(
          text: "siz berilgan 40 ta savollardan ",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300,color: Colors.black),
        ),
        TextSpan(
          text: "$correctAnswers ",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.red, 
          ),
        ),
        TextSpan(
          text: "tasiga to'g'ri javop berdingiz",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300,color: Colors.black),
        ),
      ],
    ),
  );
}