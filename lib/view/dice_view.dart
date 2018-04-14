import 'package:flutter/material.dart';
import 'figure_view.dart';

class DiceView extends StatelessWidget {
  final Color border = Colors.orangeAccent.withOpacity(0.0);
  final Color background = Colors.orangeAccent.withOpacity(0.0);
  final String center = "";

  DiceView(center, background, border);

  @override
  Widget build(BuildContext context) {
    var figures = new List<FigureView>();
    figures.addAll([
      new FigureView(center, background, border),
      new FigureView("", background, border),
      new FigureView("", background, border)
    ]);

    return new Center(
      child: new Text('Dis is de dice: '),
    );
  }
}
