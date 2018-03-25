import 'package:flutter/material.dart';

class Board extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final row = new Row(
      children: <Widget>[
        _oneRow('First element'),
        _oneRow('Second element'),
        new Expanded(
          child: new FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
    return row;
  }

  Expanded _oneRow(String label) {
    return new Expanded(
      child: new Text(label, textAlign: TextAlign.center),
    );
  }
}