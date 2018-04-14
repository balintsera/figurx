import 'package:flutter/material.dart';
import '../entity/figure.dart';
import 'figure_view.dart';
import 'figure_row.dart';

class DiceView extends StatelessWidget {
  Color border;
  Color background;
  String center;

  DiceView(this.center, this.background, this.border) {
    
  }

  @override
  Widget build(BuildContext context) {
    var figures = new List<Figure>();
    figures.addAll([
      new Figure(center, background.withOpacity(0.0), border.withOpacity(0.0)),
      new Figure("", background, border.withOpacity(0.0)),
      new Figure("", background.withOpacity(0.0), border)
    ]);

    return new Column(
      children: [new FigureRow(figures, 3)],
    );
  }
}
