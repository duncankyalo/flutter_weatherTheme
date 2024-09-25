import 'package:flutter/material.dart';
import 'package:weather_theme/app.dart'; // Import the app.dart file
import 'package:weather_theme/models/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? false; // Get saved theme

  runApp(MyApp(
    initialTheme: isDarkMode ? ThemeMode.dark : ThemeMode.light, 
  ));
}