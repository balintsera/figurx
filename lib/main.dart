import 'package:flutter/material.dart';
import 'view/game.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FigurX',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to FigurX'),
        ),
        body: new ListView(
          children: [
            new Game(),
          ],
        )
      ),
    );
  }
}
