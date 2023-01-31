import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWith(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
