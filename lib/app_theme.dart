import 'package:flutter/material.dart';

class AppTheme {
  static const gold = Color(0xFFFFA90A);
  static const white = Color(0xFFFFFFFF);
  static const gray = Color(0xFFC6C6C6);
  static const graysecond = Color(0xFF282A28);
  static const black = Color(0xFF000000);

  static ThemeData lightetheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1A1A1A),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A1A1A),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: gold,
      unselectedItemColor: gray,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: gray,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
