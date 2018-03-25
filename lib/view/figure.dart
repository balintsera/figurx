import 'package:flutter/material.dart';

class Figure extends StatelessWidget {
  final String monkey = '\u{1f435}';

  @override
  Widget build(BuildContext context) {
    return _circle(monkey);
  }

  Container _circle(String figure) {
    return new Container(
      // red circle
      child: _centralFigure(figure),
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

  Center _centralFigure(String figure) {
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
