import 'package:flutter/material.dart';

final ThemeData calculatorTheme = _calculatorTheme();

ThemeData _calculatorTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    colorScheme: base.colorScheme.copyWith(
      background: const Color.fromRGBO(255, 255, 255, 1),
      onBackground: const Color.fromRGBO(46, 58, 72, 1),
      primaryContainer: const Color.fromRGBO(255, 194, 226, 1),
      secondaryContainer: const Color.fromRGBO(255, 255, 255, 1),
      tertiaryContainer: const Color.fromRGBO(239, 122, 133, 1),
    )
  );
}