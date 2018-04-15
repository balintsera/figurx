import 'package:flutter/material.dart';
import '../entity/figure.dart';
import 'figure_row.dart';
import 'figure_view.dart';

class Message extends StatelessWidget {
  String _message = "no message";

  Message(String message): 
  _message = message; 

  @override
  Widget build(BuildContext context) {
    return new Text(_message, style: new TextStyle(fontSize: 32.0, color: Colors.red));
  }
}