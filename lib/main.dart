import 'package:flutter/material.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/core/bloc_provider/app_bloc_provider.dart';

void main() {
  runApp(const AppBlocProvider(child: MyApp()));
}
