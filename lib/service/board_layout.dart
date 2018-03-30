import 'package:flutter/material.dart';
import '../entity/figure.dart';
import 'dart:math';

class BoardLayout {
  final List<Color> availColors;
  final List<String> availFigures;
  final allPermutations = new List<Figure>();
  List<Figure> subSet;
  static String monkey = '\u{1f435}';
  static String cat = '\u{1f431}';
  static String bunny = '\u{1f430}';
  static String cow = '\u{1f42e}';

  BoardLayout({this.availColors, this.availFigures}) {
    _generateAllPermutations();
  }

  // Initialize with defaults
  BoardLayout.withDefaults()
      : availColors = [
          Colors.lightGreen[300],
          Colors.deepOrangeAccent[200],
          Colors.deepPurpleAccent[100]
        ],
        availFigures = [monkey, cat, bunny, cow];

  List<Figure> randomSubSet(int length) {
    // put some random selected index into a list
    var indices = [];
    final random = new Random();
    for (var i = 0; i < length; i++) {
      int rnd = random.nextInt(length);
      while (indices.indexOf(rnd) > -1) {
        rnd = random.nextInt(length);
      }
      indices.add(rnd);
    }

    // return the resulted indexed figures from all permutations
    return indices.map((index) => allPermutations[index]).toList();
  }

  _generateAllPermutations() {
    for (var bgColor in availColors) {
      for (var bordColor in availColors) {
        for (var figure in availFigures) {
          allPermutations.add(new Figure(figure, bordColor, bgColor));
        }
      }
    }
  }
}
