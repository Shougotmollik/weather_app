import 'package:get/get.dart';
import 'package:weather_app/constatns/app_assets.dart';
import 'package:weather_app/model/forecast_item_model.dart';

class ForecastController extends GetxController {
  var forecastList = <ForecastItemModel>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    loadForecast();
  }

  void loadForecast() {
    forecastList.value = [
      ForecastItemModel(temp: "19°C", image: AppAssets.weatherSunImage, day: "Mon"),
      ForecastItemModel(temp: "18°C", image: AppAssets.weatherMoonImage, day: "Tue"),
      ForecastItemModel(temp: "17°C", image: AppAssets.weatherMoonImage, day: "Wed"),
      ForecastItemModel(temp: "20°C", image: AppAssets.weatherSunImage, day: "Thu"),
      ForecastItemModel(temp: "18°C", image: AppAssets.weatherMoonImage, day: "Fri"),
    ];
  }

  void selectIndex(int index) {
    selectedIndex.value = index;
  }
}
