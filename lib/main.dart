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
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      'questionText': "What\s your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      'questionText': "What\s your favorite name?",
      "answers": ["Tony", "Tony", "Tony", "Tony"]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
          : Result(),
    ));
  }
}
