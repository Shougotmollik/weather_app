import 'package:flutter/material.dart';
import 'package:weather_app/data/model/weather_model.dart';


class WeatherCard extends StatelessWidget {
  final WeatherModel weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(weather.location?.name ?? "Unknown City",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(weather.location?.country ?? ""),
            const SizedBox(height: 10),
            Text("Temperature: ${weather.current?.tempC ?? '--'} °C"),
            Text("Condition: ${weather.current?.condition?.text ?? '--'}"),
          ],
        ),
      ),
    );
  }
}
