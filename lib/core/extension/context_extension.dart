import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size get mediaQuery => MediaQuery.sizeOf(this);

  double get deviceHeight => mediaQuery.height;
  double get deviceWidth => mediaQuery.width;

  double heightPercentage(double percentage) => deviceHeight * percentage;
  double widthPercentage(double percentage) => deviceWidth * percentage;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;

  Duration get lowDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
}
