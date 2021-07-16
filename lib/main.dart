import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(
//       MyApp()); // boots up our app and tries to draw the widget tree. We need to tell the runapp what our core widget is.
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  static final _questions = [
    {
      'question': "What is your favourite colour?",
      'answers': [
        {'text': "Black", 'score': 10},
        {'text': "Blue", 'score': 5},
        {'text': "Green", 'score': 3},
        {'text': "Red", 'score': 1}
      ]
    },
    {
      'question': "Who is the best duelist?",
      'answers': [
        {'text': "Jett", 'score': 1},
        {'text': "Raze", 'score': 4},
        {'text': "Reyna", 'score': 3},
        {'text': "Phoenix", 'score': 2},
        {'text': "Yoru", 'score': 10}
      ]
    },
    {
      'question': "Which anime is the best?",
      'answers': [
        {'text': "OnePiece", 'score': 1},
        {'text': "Naruto", 'score': 1},
        {'text': "DemonSlayer", 'score': 3},
        {'text': "AoT", 'score': 2},
      ],
    },
  ];

  void _ansQues(int score) {
    _totalScore += score;
    print("Answer was chosen!");
    setState(() {
      _quesIndex += 1;
    });

    if (_quesIndex < _questions.length)
      print("We have more questions!");
    else
      print("No questions left!");
  } //onPressed requires a call to be made to a function with void return type which does not accept any parameters.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("This is my first app!"),
      ),
      body: _quesIndex < _questions.length
          ? Quiz(_ansQues, _quesIndex, _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
