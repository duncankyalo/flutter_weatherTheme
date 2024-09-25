import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_theme/models/weather_data.dart';

class WeatherCard extends StatelessWidget {
  final WeatherData weatherData;
  final String cityName;

  WeatherCard({required this.weatherData, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cityName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Icon(
              _getWeatherIcon(weatherData.iconCode),
              size: 64,
            ),
            SizedBox(height: 16),
            Text(
              '${weatherData.temperature.toStringAsFixed(1)}°C',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              weatherData.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // You can add more weather details (humidity, wind speed, etc.) here
          ],
        ),
      ),
    );
  }

  // Helper method to get the appropriate weather icon
  IconData _getWeatherIcon(String iconCode) {
    switch (iconCode) {
      case '01d':
        return WeatherIcons.day_sunny;
      case '01n':
        return WeatherIcons.night_clear;
      case '02d':
        return WeatherIcons.day_cloudy;
      case '02n':
        return WeatherIcons.night_alt_cloudy;
      case '03d':
      case '03n':
        return WeatherIcons.cloud;
      case '04d':
      case '04n':
        return WeatherIcons.cloudy;
      case '09d':
      case '09n':
        return WeatherIcons.showers;
      case '10d':
      case '10n':
        return WeatherIcons.rain;
      case '11d':
      case '11n':
        return WeatherIcons.thunderstorm;
      case '13d':
      case '13n':
        return WeatherIcons.snow;
      case '50d':
      case '50n':
        return WeatherIcons.fog;
      default:
        return WeatherIcons.day_sunny; // Default to sunny
    }
  }
}