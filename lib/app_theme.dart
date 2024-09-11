import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF1E1E1E);
  static const Color yellow = Color(0xFFFFB224);
  static const Color gray = Color(0xFFC6C6C6);
  static const Color lava = Color(0xFF707070);
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(color: Colors.transparent),
      primaryColor: primary,
      scaffoldBackgroundColor: black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lava,
        unselectedItemColor: gray,
        selectedItemColor: yellow,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: primary, fontSize: 22, fontWeight: FontWeight.w400),
        titleSmall: TextStyle(
            color: primary, fontSize: 16, fontWeight: FontWeight.w500),
      ));
}
