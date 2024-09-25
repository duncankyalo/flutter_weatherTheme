import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeSwitcher extends StatefulWidget {
  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  // Load the saved theme from SharedPreferences
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = prefs.getBool('isDarkMode') ?? false; // Default to false if not found
    });
  }

  // Save the theme to SharedPreferences
  Future<void> _saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDark);
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isDarkMode,
      onChanged: (value) {
        setState(() {
          isDarkMode = value;
          _saveTheme(value); // Save the new theme
        });
      },
    );
  }
}