import 'package:flutter/material.dart';
import '../entity/figure.dart';
import 'figure_row.dart';
import 'figure_view.dart';

class DiceView extends StatelessWidget {
  Color border;
  Color background;
  String center;

  DiceView(Figure figure) {
    center = figure.figure;
    border = figure.borderColor;
    background = figure.bgColor;
  }

  @override
  Widget build(BuildContext context) {
    var figures = new List<FigureView>();
    Figure fig = new Figure(center, background, border);
    figures.addAll([
      new FigureView.showCenter(figure: fig),
      new FigureView.showBorder(figure: fig),
      new FigureView.showBg(figure: fig)
    ]);

    return new Column(
      children: [new FigureRow(figures, 3)],
    );
  }
}
