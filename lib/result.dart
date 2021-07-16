import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function handler;

  Result(this.totalScore, this.handler);

  String get endPhrase {
    String temp;
    if (totalScore <= 5) {
      temp = "You have an amazing opinion!";
    } else if (totalScore <= 10) {
      temp = "You have a good choice!";
    } else {
      temp = "You have an interesting personality";
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            endPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
              onPressed: () {
                handler();
              },
              child: Text("Restart Quiz?",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  )))
        ],
      ),
    );
  }
}
