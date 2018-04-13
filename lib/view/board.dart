import 'package:flutter/material.dart';
import '../service/board_layout.dart';
import 'figure_view.dart';
import '../entity/figure.dart';

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final layout = new BoardLayout.withDefaults();

    List<Row> rows = [];
    // Add figures by three to widgets
    for (var i = 3; i <= layout.allPermutations.length; i += 3) {
      var threeFig = layout.allPermutations.getRange(i - 3, i).toList();
      rows.add(_getOneRow(threeFig));
    }

    return new Column(
      children: rows,
    );
  }

  Row _getOneRow(List<Figure> figures) {
    return new Row(children: [
      new Expanded(
          child: new FigureView(
              figures[0].figure, figures[0].bgColor, figures[0].borderColor)),
      new Expanded(
          child: new FigureView(
              figures[1].figure, figures[1].bgColor, figures[1].borderColor)),
      new Expanded(
          child: new FigureView(
              figures[2].figure, figures[2].bgColor, figures[2].borderColor)),
    ]);
  }
}
