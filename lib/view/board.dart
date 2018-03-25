import 'package:flutter/material.dart';
import 'figure.dart';
import '../service/board_layout.dart';

class Board extends StatelessWidget {
  final String monkey = '\u{1f435}';
  final String cat = '\u{1f431}';
  final String bunny = '\u{1f430}';
  final String cow = '\u{1f42e}';

  @override
  Widget build(BuildContext context) {
    final layout = new BoardLayout();
    var elements = layout.randomSubSet(9);
    for (var element in elements) {
      print(element.figure);
      print(element.bgColor);
      print(element.borderColor);
    }

    final row = new Row(
      children: <Widget>[
        new Expanded(child: new Figure(monkey, Colors.lime[200], Colors.black)),
        new Expanded(
            child: new Figure(cat, Colors.deepOrangeAccent, Colors.black)),
        new Expanded(
            child: new Figure(bunny, Colors.deepPurpleAccent, Colors.black))
      ],
    );
    return row;
  }

  
}
