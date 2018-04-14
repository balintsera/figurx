import 'package:flutter/material.dart';
import 'game.dart';
import '../service/board_layout.dart';
import './dice_view.dart';
import 'figure_row.dart';
import 'figure_view.dart';

class Board extends State<Game> {
  int numRows = 5;

  @override
  Widget build(BuildContext context) {
    final layout = new BoardLayout.withDefaults();
    List<FigureView> randomlyOrdered = layout
        .randomSubSet(layout.allPermutations.length)
        .map((fig) => new FigureView(fig))
        .toList();
    List<Widget> rows = [];

    // add dice as row
    rows.add(new DiceView(layout.allPermutations[10]));

    // Add figures by three to widgets
    for (var i = numRows; i <= randomlyOrdered.length; i += numRows) {
      var figs = randomlyOrdered.getRange(i - numRows, i).toList();
      rows.add(new FigureRow(figs, numRows));
    }

    return new Column(children: rows);
  }

}
