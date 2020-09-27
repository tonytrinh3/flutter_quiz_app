import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      // this triggers the re-render of new questions by continuing to the next index
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //Map class. key value pairs
    var questions = [
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

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: Column(children: [
        Question(
          // question widget
          questions[_questionIndex]['questionText'],
        ),
        ...(questions[_questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ]),
    ));
  }
}
