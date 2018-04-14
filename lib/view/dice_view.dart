import 'package:flutter/material.dart';
import '../service/dice_service.dart';

class DiceView extends StatelessWidget {

  final String monkey = '\u{1f435}'; 
  final String cat = '\u{1f431}'; 
  final String bunny = '\u{1f430}'; 
  final String cow = '\u{1f42e}';
  
  @override
  Widget build(BuildContext context) {
    var figures = new List<String>();
    figures.addAll([monkey, cat, bunny, cow]);
    var diceService = new DiceService(figures);
    return new Center(
      child: new Text('Dis is de dice: ' + diceService.roll().toString()),
    );
  }
}
