import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/route/route_names.dart';
import 'package:weather_app/route/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Weather App",
      getPages: Routes.pages,
      initialRoute: RouteNames.welcomeScreen,
    );
  }
}
