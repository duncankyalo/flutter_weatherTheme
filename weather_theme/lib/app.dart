import 'package:flutter/material.dart';
import 'package:weather_theme/screens/home_screen.dart';
import 'package:weather_theme/models/theme_data.dart'; 

class MyApp extends StatelessWidget {
  final ThemeMode initialTheme;

  MyApp({required this.initialTheme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Theme App',
      themeMode: initialTheme, 
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeScreen(),
    );
  }
}