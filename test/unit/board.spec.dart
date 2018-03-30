import '../../lib/service/board_layout.dart';
import '../../lib/entity/figure.dart';
import 'package:flutter/material.dart';

import "package:test/test.dart";

// flutter test test/unit/dice_service.dart

void main() {
  test("Generate a simple board with all possible permutations", () {
    List<Color> availColors = [
      Colors.lime[200],
    ];
    final String monkey = '\u{1f435}';
    final String cat = '\u{1f431}';

    List<Figure> expectedPermutations = [
      new Figure(monkey, availColors[0], availColors[0]),
      new Figure(cat, availColors[0], availColors[0]),
    ];

    BoardLayout layout =
        new BoardLayout(availColors: availColors, availFigures: [monkey, cat]);

    expect(layout.allPermutations.length, equals(expectedPermutations.length));
    expect(layout.allPermutations[0].figure,
        equals(expectedPermutations[0].figure));
    expect(layout.allPermutations[1].figure,
        equals(expectedPermutations[1].figure));
  });
  test("Generate the default board with 36 elements", () {
    BoardLayout layout = new BoardLayout.withDefaults();

    expect(layout.allPermutations.length, equals(36));
  });
}
