import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //just defining the variable first

  //this doesn't work anymore apparently once you set questionText as final
  // Question({String questionText}) {
  //   //constructor
  //   this.questionText = questionText;
  // };

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
