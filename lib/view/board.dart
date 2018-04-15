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
  Figure currentDice;
  final layout;
  List<FigureView> randomlyOrdered;
  String _message = "Find it";
  Figure _selected;


  Board():
    layout = new BoardLayout.withDefaults()
   {
    randomlyOrdered = layout
        .subSet
        .map((fig) => new FigureView(figure: fig, onFigureTap: _handleFigureTap))
        .toList();
    dice = new Dice.fromBoard(layout); 
    currentDice = dice.roll();   
    }

  @override
  Widget build(BuildContext context) {
    
    List<Widget> rows = [];

    // add message 
    rows.add(new Message(_message));

    // add dice as row
    rows.add(new DiceView(currentDice));
    _startDiceInterval();

    // Add figures by three to widgets
    for (var i = numRows; i <= randomlyOrdered.length; i += numRows) {
      var figs = randomlyOrdered.getRange(i - numRows, i).toList();
      rows.add(new FigureRow(figs, numRows));
    }

    return new Column(children: rows);
  }

  _startDiceInterval() {
    new Timer(new Duration(seconds: secondsBetweenRolls), () {
      setState(() => currentDice = dice.roll());
    });
  }

  void _handleFigureTap(Figure tapped) {
    _selected = tapped;
    String message;
    if (_selected == currentDice ) {
      message = ":)";
    } else {
      message = ":(";
    }
    setState(() => _message = message);
  }
}
