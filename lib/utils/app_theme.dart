import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    primaryColor: Color(0xFF58d5d1),
    accentColor: Color(0xFFafebe9),
    scaffoldBackgroundColor: Color(0xFF0e0000),
    appBarTheme: AppBarTheme(
      color: Color(0xFF58d5d1),
    ),
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
      ),
      display1: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
  );
}
