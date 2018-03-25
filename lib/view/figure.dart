import 'package:flutter/material.dart';

class Figure extends StatelessWidget {
  final String figure;

  Figure(this.figure);
  
  @override
  Widget build(BuildContext context) {
    return _circle();
  }

  Container _circle() {
    return new Container(
      // red circle
      child: _centralFigure(),
      decoration: new BoxDecoration(
        color: Colors.red[400],
        shape: BoxShape.circle,
        border: new Border.all(
          color: Colors.black,
          width: 16.0,
        ),
      ),

      padding: new EdgeInsets.all(16.0),
      width: 160.0,
      height: 160.0,
    );
  }

  Center _centralFigure() {
    return new Center(
      child: new Text(
        figure,
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontSize: 50.0,
        ),
      )
    );
  }
}
