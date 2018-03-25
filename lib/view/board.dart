import 'package:flutter/material.dart';
import 'figure.dart';

class Board extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final row = new Row(
      children: <Widget>[
        new Expanded(child: new Figure('\u{1f435}')),
        new Expanded(child: new Figure('\u{1f435}')),
        new Expanded(child: new Figure('\u{1f435}'))
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