import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/core/network/api_constants.dart';
import 'package:weather_app/data/model/weather_model.dart';

class WeatherRemoteDataSource {
  final ApiClient apiClient;

  WeatherRemoteDataSource(this.apiClient);

  Future<WeatherModel> getWeather(String city) async {
    final url =
        "${ApiConstants.baseUrl}/forecast.json?key=${ApiConstants.apiKey}&q= $city&days=7";
    final jsonResponse = await apiClient.getRequest(url);
    return WeatherModel.fromJson(jsonResponse);
  }
}
