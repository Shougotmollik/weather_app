import 'package:flutter/material.dart';
import 'package:weather_app/views/widgets/custom_linear_background.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLinearBackground(
          child: Column(
        children: [
          Column(
            children: [
              Text('North America')
            ],
          )
        ],
      )),
    );
  }
}
