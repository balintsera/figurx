import 'package:flutter/material.dart';
import '../entity/figure.dart';

class FigureView extends StatelessWidget {
  Figure figure;
  String center;
  Color borderColor;
  Color bgColor;
  var _onTap;

  FigureView({ this.figure, onFigureTap }) {
    center = figure.figure;
    borderColor = figure.borderColor;
    bgColor = figure.bgColor;
    _onTap = onFigureTap;
  }

  FigureView.showCenter({ this.figure, onFigureTap }) {
    center = figure.figure;
    borderColor = figure.borderColor.withOpacity(0.0);
    bgColor = figure.bgColor.withOpacity(0.0);
    _onTap = onFigureTap;
  }

  FigureView.showBg({ this.figure, onFigureTap }) {
    center = "";
    borderColor = figure.borderColor.withOpacity(0.0);
    bgColor = figure.bgColor;
    _onTap = onFigureTap;
  }

  FigureView.showBorder({ Figure figure, onFigureTap }) {
    center = "";
    borderColor = figure.borderColor;
    bgColor = figure.bgColor.withOpacity(0.0);
    _onTap = onFigureTap;
  }

  double borderHeight = 10.0;
  double padding = 4.0;
  double margin = 4.0;
  double fontSize = 20.0;
  double width = 60.0;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child:_circle()
    );
  }

  Container _circle() {
    return new Container(
      // red circle
      child: _centralFigure(),
      decoration: new BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
        border: new Border.all(
          color: borderColor,
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
      center,
      textAlign: TextAlign.center,
      style: new TextStyle(
        fontSize: fontSize,
      ),
    ));
  }

  _handleTap() {
    _onTap(figure);
  }
}
