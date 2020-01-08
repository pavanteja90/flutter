import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String displayText;

  InfoText({@required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: (Text(
          displayText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        )));
  }
}
