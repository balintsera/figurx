import '../service/board_layout.dart';
import '../entity/figure.dart';

import 'dart:math';

class Dice {
  List<Figure> allPerms;
  List<Figure> usedPerms = [];
  final random = new Random();
  Dice.fromBoard(BoardLayout layout) {
    allPerms = layout.subSet;
  }

  Figure roll() {
    int max = allPerms.length;
    print(max);
    // time to time we run out of unused permutations
    // so we put everything back into unused from used
    if (max < 1) {
      allPerms.addAll(usedPerms);
      max = allPerms.length;
      usedPerms = [];
    }

    int selectedInd = random.nextInt(max);
    Figure selected = allPerms[selectedInd];
    allPerms.removeAt(selectedInd);
    usedPerms.add(selected);
    return selected;
  }
}
