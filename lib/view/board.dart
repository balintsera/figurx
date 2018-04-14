import 'package:flutter/material.dart';
import 'game.dart';
import '../service/board_layout.dart';
import './dice_view.dart';
import '../entity/figure.dart';
import 'figure_row.dart';

class Board extends State<Game> {
  int numRows = 5;

  @override
  Widget build(BuildContext context) {
    final layout = new BoardLayout.withDefaults();
    List<Figure> randomlyOrdered =
        layout.randomSubSet(layout.allPermutations.length);
    List<Widget> rows = [];

    // add dice as row
    rows.add(new DiceView(randomlyOrdered[3].figure, randomlyOrdered[3].bgColor, randomlyOrdered[3].borderColor));

    // Add figures by three to widgets
    for (var i = numRows; i <= randomlyOrdered.length; i += numRows) {
      var figs = randomlyOrdered.getRange(i - numRows, i).toList();
      rows.add(new FigureRow(figs, numRows));
    }

    return new Column(children: rows);
  }
}
