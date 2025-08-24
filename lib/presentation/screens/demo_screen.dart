import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit/weather_cubit.dart';
import 'package:weather_app/presentation/screens/weather_card.dart';

class WeatherScreen extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();

  WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather App")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: cityController,
              decoration: const InputDecoration(
                hintText: "Enter city name",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final city = cityController.text.trim();
                if (city.isNotEmpty) {
                  context.read<WeatherCubit>().fetchWeather(city);
                }
              },
              child: const Text("Search"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<WeatherCubit, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is WeatherLoaded) {
                    return WeatherCard(weather: state.weather);
                  } else if (state is WeatherError) {
                    return Center(child: Text(state.message));
                  }
                  return const Center(child: Text("Enter a city to search"));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
