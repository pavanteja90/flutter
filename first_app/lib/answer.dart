import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final Function answerFunction;
  Answer(this.buttonText, this.answerFunction);  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.blue,
        child: Text(buttonText),
        onPressed: answerFunction,        
      ),
    );
  }
}