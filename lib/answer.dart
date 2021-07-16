import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function ptr;
  final String ansText;
  Answer(this.ptr, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            ptr();
          },
          child: Text(ansText),
          style: ElevatedButton.styleFrom(
              primary: Colors.red.shade200,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ))),
      color: Colors.white30,
    );
  }
}
