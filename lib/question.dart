import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;

  Question(this.ques);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        ques,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'Moonrising',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
