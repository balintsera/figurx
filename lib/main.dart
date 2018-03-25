import 'package:flutter/material.dart';
import 'view/dice.dart';
import 'view/board.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dice = new Dice();
    return new MaterialApp(
      title: 'FigurX',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to FigurX'),
        ),
        body: new ListView(
          children: [
            dice,
            new Board(),
          ],
        )
      ),
    );
  }
}
