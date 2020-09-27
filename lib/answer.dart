import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; //define the selectHandler function first
  final String answerText;

//it seems like every time you pass down something through a class
//you have to have a constructor and define what is being passed down
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
