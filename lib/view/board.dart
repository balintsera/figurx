import 'package:flutter/material.dart';
import 'figure.dart';

class Board extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final row = new Row(
      children: <Widget>[
        _oneRow('First element'),
        _oneRow('Second element'),
        new Expanded(
          child: new Figure(),
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