import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    iconTheme: IconThemeData(
      color: Colors.grey,
    ),
    textTheme: Typography.blackRedmond,
    cardTheme: CardTheme(
      color: Colors.white70,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: Typography.whiteRedmond,
    cardTheme: CardTheme(
      color: Colors.black,
    ),
  );
}
