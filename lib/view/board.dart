import 'package:flutter/material.dart';
import 'game.dart';
import '../service/board_layout.dart';
import './dice_view.dart';
import 'figure_row.dart';
import 'figure_view.dart';
import '../entity/dice.dart';
import 'dart:async';
import '../entity/figure.dart';

class Board extends State<Game> {
  final int numRows = 5;
  final int secondsBetweenRolls = 5;
  final int figuresNum = 40;
  Dice dice;
  Figure currentDice;
  final layout;
  List<FigureView> randomlyOrdered;

  Board():
    layout = new BoardLayout.withDefaults()
   {
    randomlyOrdered = layout
        .subSet
        .map((fig) => new FigureView(fig))
        .toList();
    dice = new Dice.fromBoard(layout); 
    currentDice = dice.roll();   
    }

  @override
  Widget build(BuildContext context) {
    
    List<Widget> rows = [];

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
}
