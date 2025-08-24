import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screens/demo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: WeatherScreen(),
    );
  }
}
