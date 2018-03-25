import 'package:flutter/material.dart';
import '../service/dice_service.dart';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numbers = new List<int>();
    numbers.addAll([1, 5, 12, 6, 7]);
    var diceService = new DiceService(numbers);
    return new Center(
      child: new Text('Dis is de dice: ' + diceService.throwDice().toString()),
    );
  }
}
