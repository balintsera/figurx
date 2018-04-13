import '../../lib/service/board_layout.dart';
import '../../lib/entity/dice.dart';

import '../../lib/entity/figure.dart';
import 'package:flutter/material.dart';

import "package:test/test.dart";

// flutter test test/unit/dice_service.dart

void main() {
  test("Generate a dice with the default 36 elements board", () {
    BoardLayout layout = new BoardLayout.withDefaults();
    Dice dice = new Dice.fromBoard(layout);
    expect(layout.allPermutations.length, equals(dice.allPerms.length));
  });
  test("Roll the dice with the default 36 elements board", () {
    BoardLayout layout = new BoardLayout.withDefaults();
    Dice dice = new Dice.fromBoard(layout);
    // before roll, there should be 36 layout
    int originalLengthOfAllPerms = dice.allPerms.length;
    Figure selected = dice.roll();
    
    // after roll, there should one less
    expect(dice.allPerms.length, equals(originalLengthOfAllPerms - 1));

    // and it shoudl equal to the one in the dice.usedPerms
    expect(dice.usedPerms[0], equals(selected));

    // Roll again, and count again
    selected = dice.roll();

    // after roll, there should one less
    expect(dice.allPerms.length, equals(originalLengthOfAllPerms - 2));
    
    // and it shoudl equal to the one in the dice.usedPerms
    expect(dice.usedPerms[1], equals(selected));
  });
}
