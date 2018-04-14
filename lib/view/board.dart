import 'package:flutter/material.dart';
import 'game.dart';
import '../service/board_layout.dart';
import 'figure_view.dart';
import './dice_view.dart';
import '../entity/figure.dart';

class Board extends State<Game> {
  int numRows = 5; 

  @override
  Widget build(BuildContext context) {
    final layout = new BoardLayout.withDefaults();
    List<Figure> randomlyOrdered = layout.randomSubSet(layout.allPermutations.length);
    List<Row> rows = [];
    // add dice first
    rows.add(new Row(children: [new DiceView()]));
    // Add figures by three to widgets
    for (var i = numRows; i <= randomlyOrdered.length; i += numRows) {
      var threeFig = randomlyOrdered.getRange(i - numRows, i).toList();
      rows.add(_getOneRow(threeFig));
    }

    return new Column(
      children: rows,
    );
  }

  Row _getOneRow(List<Figure> figures) {
    List<Expanded> children = [];
    for (var i = 0; i < numRows; i++) {
      var expanded = new Expanded(
          child: new FigureView(
              figures[i].figure, figures[i].bgColor, figures[i].borderColor)
      );
      children.add(expanded);
    }
    return new Row(children: children);
  }
}
