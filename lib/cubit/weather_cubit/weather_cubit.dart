import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.repository) : super(WeatherInitial());

  final WeatherRepository repository;

  Future<void> fetchWeather(String city) async {
    emit(WeatherLoading());
    try {
      final weather = await repository.fetchWeather(city);
      emit(WeatherLoaded(weather));
    } catch (e) {
      emit(WeatherError('Failed to load${e.toString()}'));
    }
  }
}
