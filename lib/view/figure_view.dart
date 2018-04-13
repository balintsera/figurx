import 'package:flutter/material.dart';

class FigureView extends StatelessWidget {
  final String figure;
  final Color borderColor;
  final Color bgColor;

  FigureView(this.figure, this.bgColor, this.borderColor);

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
          width: 16.0,
        ),
      ),

      padding: new EdgeInsets.all(16.0),
      margin: new EdgeInsets.all(6.0),
      width: 140.0,
      height: 140.0,
    );
  }

  Center _centralFigure() {
    return new Center(
        child: new Text(
      figure,
      textAlign: TextAlign.center,
      style: new TextStyle(
        fontSize: 45.0,
      ),
    ));
  }
}
