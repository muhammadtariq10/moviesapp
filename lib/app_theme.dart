import 'package:flutter/material.dart';

class AppTheme {
  static const gold = Color(0xFFFFA90A);
  static const gray = Color(0xFFC6C6C6);

  static ThemeData lightetheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A1A1A),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: gold,
      unselectedItemColor: gray,
    ),
  );
}
