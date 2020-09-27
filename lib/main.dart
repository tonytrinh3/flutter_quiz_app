import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  //runApp is draw something on screen based on Widget
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What\s your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ]
    },
    {
      'questionText': "What\s your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 3},
        {"text": "Snake", "score": 11},
        {"text": "Elephant", "score": 5},
        {"text": "Lion", "score": 9},
      ]
    },
    {
      'questionText': "What\s your favorite name?",
      "answers": [
        {"text": "Tony", "score": 10},
        {"text": "Tony", "score": 5},
        {"text": "Tony", "score": 3},
        {"text": "Tony", "score": 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    print('We have more questi3qwaewaewfons!');
    setState(() {
      //it seems you can just call setState on anything without
      //initiaizing what a state is
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
      // this triggers the re-render of new questions by continuing to the next index
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //Map class. key value pairs

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: _questionIndex < _questions.length
          //this below is only for named arguement
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
