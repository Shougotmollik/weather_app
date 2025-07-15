import 'package:get/get.dart';
import 'package:weather_app/controller/forecast_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForecastController());
  }
}
