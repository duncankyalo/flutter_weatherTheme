import 'package:flutter/material.dart';

// Define the Light Theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue, // Primary color (e.g., app bar background)
  primaryColorDark: Colors.blueAccent, // Accent color (e.g., button backgrounds)
  scaffoldBackgroundColor: Colors.white, // Background color of the main content area
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue, // App bar background color
    titleTextStyle: TextStyle(
      color: Colors.white, // App bar title text color
      fontSize: 20,
    ),
  ),
  // ... more theme customizations
);

// Define the Dark Theme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey[900], // Primary color for dark theme
  primaryColorDark: Colors.grey[800], // Accent color for dark theme
  scaffoldBackgroundColor: Colors.grey[850], // Background color for dark theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900], // App bar background color for dark theme
    titleTextStyle: TextStyle(
      color: Colors.white, // App bar title text color for dark theme
      fontSize: 20,
    ),
  ),
  // ... more theme customizations
);
