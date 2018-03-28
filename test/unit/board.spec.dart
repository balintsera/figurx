import '../../lib/service/board_layout.dart';
import '../../lib/entity/figure.dart';
import 'package:flutter/material.dart';

import "package:test/test.dart";

// flutter test test/unit/dice_service.dart

void main() {
  test("String.split() splits the string on the delimiter", () {
    var string = "foo,bar,baz";
    expect(string.split(","), equals(["foo", "bar", "baz"]));
  });

  test("Generate a complete board with all possible permutations", () {
    BoardLayout layout = new BoardLayout();
    List<Color> availColors = [Colors.lime[200], Colors.deepOrangeAccent, Colors.deepPurple[100]];

    List<Figure> expectedPermutations = [new Figure("monkey", availColors[0], availColors[0])];
    expect(layout.allPermutations, equals(expectedPermutations));
  });
}
