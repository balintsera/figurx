import 'package:flutter/material.dart';

class Figure {
  final String figure;
  final Color bgColor;
  final Color borderColor;

  Figure(this.figure, this.bgColor, this.borderColor);
  @override
  String toString({DiagnosticLevel minLevel: DiagnosticLevel.debug}) {
    return "Figure: f: $figure, bg: $bgColor, bo: $borderColor";
  }
}
