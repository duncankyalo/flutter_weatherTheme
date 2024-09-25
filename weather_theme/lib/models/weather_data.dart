class WeatherData {
  final String city;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;
  final String iconCode;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.iconCode,
  });

  // Factory constructor for creating a WeatherData object from JSON data
  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      city: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
      iconCode: json['weather'][0]['icon'], 
    );
  }
}