import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_theme/models/weather_data.dart';

class WeatherApiService {
  final String apiKey = "bc867e2a2fa1789d08a5d3a8e681b7a6"; // Replace with your actual API key

  Future<WeatherData> getWeatherData(String city) async {
    final uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return WeatherData.fromJson(data); 
    } else {
      throw Exception('Failed to fetch weather data'); 
    }
  }
}