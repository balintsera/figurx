import 'package:flutter/material.dart';
import 'figure_view.dart';
import '../entity/figure.dart';

class FigureRow extends StatelessWidget {
  final List<Figure> figures;
  final int numRows;
  
  FigureRow(this.figures, this.numRows);

  @override
  Widget build(BuildContext context) {
     return new Column(
      children: [_getOneRow(figures)],
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
