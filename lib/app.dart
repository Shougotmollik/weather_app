import 'package:flutter/material.dart';
import 'package:weather_app/ui/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Weather App",
      home: HomeScreen(),
    );
  }
}
