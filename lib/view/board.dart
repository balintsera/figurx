import 'package:flutter/material.dart';
import 'figure.dart';

class Board extends StatelessWidget {
  final String monkey = '\u{1f435}';
  final String cat = '\u{1f431}';
  final String bunny = '\u{1f430}';
  final String cow = '\u{1f42e}';

  @override
  Widget build(BuildContext context) {
    final row = new Row(
      children: <Widget>[
        new Expanded(child: new Figure(monkey, Colors.lime[200], Colors.black)),
        new Expanded(
            child: new Figure(cat, Colors.deepOrangeAccent, Colors.black)),
        new Expanded(child: new Figure(bunny, Colors.deepPurpleAccent, Colors.black))
      ],
    );
    return row;
  }
}
