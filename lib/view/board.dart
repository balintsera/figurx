import 'package:flutter/material.dart';
import 'game.dart';
import '../service/board_layout.dart';
import './dice_view.dart';
import 'figure_row.dart';
import 'figure_view.dart';
import '../entity/dice.dart';
import 'dart:async';
import '../entity/figure.dart';
import 'message.dart';

class Board extends State<Game> {
  final int numRows = 5;
  final int secondsBetweenRolls = 5;
  final int figuresNum = 40;
  Dice dice;
  Figure _currentFigure;
  final layout;
  List<FigureView> randomlyOrdered;
  String _message = "Find it";
  Figure _selected;
  StreamSubscription _interval;

  Board() : layout = new BoardLayout.withDefaults() {
    randomlyOrdered = layout.subSet
        .map(
            (fig) => new FigureView(figure: fig, onFigureTap: _handleFigureTap))
        .toList();
    dice = new Dice.fromBoard(layout);
    _currentFigure = dice.roll();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    // add message
    rows.add(new Message(_message));

    // add dice as row
    rows.add(new DiceView(_currentFigure));
    _startDiceInterval();

    // Add figures by three to widgets
    for (var i = numRows; i <= randomlyOrdered.length; i += numRows) {
      var figs = randomlyOrdered.getRange(i - numRows, i).toList();
      rows.add(new FigureRow(figs, numRows));
    }

    return new Column(children: rows);
  }

  void _startDiceInterval() {
    _interval = new Stream.periodic(const Duration(seconds: 5), (v) => v)
        .listen((count) {
      print('tick $count');

      setState(() {
        _resetSession("find it");
      });
    });
  }

  void _handleFigureTap(Figure tapped) {
    _selected = tapped;
    String message;
    if (_selected == _currentFigure) {
      message = ":)";
    } else {
      message = ":(";
    }
    setState(() {
      _resetSession(message);
    });
  }

  void _resetSession(message) { 
    _message = message;
    _currentFigure = dice.roll();
    _interval.cancel();
  }
}
