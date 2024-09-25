import 'package:flutter/material.dart';
import 'package:weather_theme/models/weather_data.dart';
import 'package:weather_theme/services/weather_api.dart';
import 'package:weather_theme/widgets/app_bar.dart';
import 'package:weather_theme/widgets/location_input.dart';
import 'package:weather_theme/widgets/theme_switcher.dart';
import 'package:weather_theme/widgets/weather_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherData? weatherData;
  String? cityName;

  @override
  void initState() {
    super.initState();
    _fetchWeather("London"); // Fetch initial weather for London
  }

  Future<void> _fetchWeather(String city) async {
    try {
      weatherData = await WeatherApiService().getWeatherData(city);
      cityName = city;
      setState(() {});
    } catch (e) {
      // Handle error, display error message, etc.
      print("Error fetching weather: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Weather App',
        actions: [
          ThemeSwitcher(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LocationInput(
              onCitySelected: _fetchWeather, 
            ),
            SizedBox(height: 20),
            if (weatherData != null) ...[
              WeatherCard(
                weatherData: weatherData!, 
                cityName: cityName!, 
              ),
              SizedBox(height: 20),
              // Add more widgets for additional weather details as needed
            ] else
              CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}