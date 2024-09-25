import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  final Function(String) onCitySelected;

  LocationInput({required this.onCitySelected});

  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  final TextEditingController _cityController = TextEditingController();

  @override
  void dispose() {
    _cityController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _cityController,
              decoration: InputDecoration(
                hintText: 'Enter a city',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 16.0),
          ElevatedButton(
            onPressed: () {
              final city = _cityController.text.trim();
              if (city.isNotEmpty) {
                widget.onCitySelected(city);
                _cityController.clear(); // Clear the input field
              }
            },
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}