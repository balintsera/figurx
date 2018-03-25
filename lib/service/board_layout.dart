import 'package:flutter/material.dart';
import '../entity/figure.dart';
import 'dart:math';

class BoardLayout {
  final availColors = new List<Color>();
  final availFigures = new List<String>();
  final allPermutations = new List<Figure>();
  List<Figure> subSet;

  BoardLayout() {
    availColors.addAll([Colors.lime[200], Colors.deepOrangeAccent, Colors.deepPurple[100]]);
    final String monkey = '\u{1f435}';
    final String cat = '\u{1f431}';
    final String bunny = '\u{1f430}';
    final String cow = '\u{1f42e}';
    availFigures.addAll([monkey, cat, bunny, cow]);

    _generateAllPermutations();
  }

  List<Figure> randomSubSet(int length) {
    // put some random selected index into a list
    var indices = [];
    final random = new Random();
    for (var i = 0; i < length; i++) {
      int rnd = random.nextInt(length);
      while(indices.indexOf(rnd) > -1) {
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