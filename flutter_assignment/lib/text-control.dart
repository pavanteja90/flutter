import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function buttonControl;
  TextControl({@required this.buttonControl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        child: Text('Change Text'),
        onPressed: buttonControl,
        color: Colors.blue,
      ),
    );
  }
}