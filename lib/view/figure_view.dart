import 'package:flutter/material.dart';

class FigureView extends StatelessWidget {
  final String figure;
  final Color borderColor;
  final Color bgColor;

  FigureView(this.figure, this.bgColor, this.borderColor);

  double borderHeight = 10.0;
  double padding = 4.0;
  double margin = 4.0;
  double fontSize = 20.0;
  double width = 60.0;

  @override
  Widget build(BuildContext context) {
    return _circle();
  }

  Container _circle() {
    return new Container(
      // red circle
      child: _centralFigure(),
      decoration: new BoxDecoration(
        color: this.bgColor,
        shape: BoxShape.circle,
        border: new Border.all(
          color: this.borderColor,
          width: borderHeight,
        ),
      ),

      padding: new EdgeInsets.all(padding),
      margin: new EdgeInsets.all(margin),
      width: width,
      height: width,
    );
  }

  Center _centralFigure() {
    return new Center(
        child: new Text(
      figure,
      textAlign: TextAlign.center,
      style: new TextStyle(
        fontSize: fontSize,
      ),
    ));
  }
}
