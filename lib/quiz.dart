import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function ansQues;
  final int quesIndex;
  final List<Map<String, Object>> questions;

  Quiz(this.ansQues, this.quesIndex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //children is a list of widgets which can be shown one on top of the other.
        (Question(questions[quesIndex]['question'] as String) //first widget

        ),
        ...(questions[quesIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => ansQues(answer['score']), (answer['text'] as String));
        }).toList(),
      ],
    );
  }
}
