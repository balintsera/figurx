import 'package:flutter/material.dart';
import 'figure_view.dart';

class FigureRow extends StatelessWidget {
  final List<FigureView> figureViews;
  final int numRows;
  
  FigureRow(this.figureViews, this.numRows);

  @override
  Widget build(BuildContext context) {
     return new Column(
      children: [_getOneRow()],
    );
  }

  Row _getOneRow() {
    List<Expanded> children = [];
    for (var i = 0; i < numRows; i++) {
      var expanded = new Expanded(child: this.figureViews[i]);
      children.add(expanded);
    }
    return new Row(children: children);
  }
}
