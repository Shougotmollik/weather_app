import 'package:get/get.dart';
import 'package:weather_app/route/route_names.dart';
import 'package:weather_app/views/screens/forecast_screen.dart';
import 'package:weather_app/views/screens/welcome_screen.dart';

class Routes {
  static final pages = [
    GetPage(name: RouteNames.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(
        name: RouteNames.forecastScreen,
        page: () => const ForecastScreen(),
        transition: Transition.rightToLeft)
  ];
}
