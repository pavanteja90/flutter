import 'package:flutter/material.dart';
import 'dart:math';
import './text.dart';
import './text-control.dart';

class App extends StatelessWidget {
  final textInfos = const [
    'String 1',
    'String 2',
    'String 3',
    'String 4',
    'String 5'
  ];
  var _infoText;

  void _changeText() {
    _infoText = textInfos[Random().nextInt(textInfos.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InfoText(displayText: _infoText),
        TextControl(buttonControl: _changeText)
      ]
    );
  }
}