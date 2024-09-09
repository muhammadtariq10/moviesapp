import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/home_screen.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      theme: AppTheme.lightetheme,
      themeMode: ThemeMode.light,
    );
  }
}
