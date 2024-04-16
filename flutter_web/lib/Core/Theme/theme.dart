import 'package:flutter/material.dart';

final class AppTheme {
  static ThemeData ligthTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => states == MaterialState.pressed ? Colors.black : Colors.red),
      ),
    ),
  );
}
