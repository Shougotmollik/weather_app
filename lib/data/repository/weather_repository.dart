import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/data/source/weather_remote_data_source.dart';

class WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  Future<WeatherModel> fetchWeather(String city) async {
    return await remoteDataSource.getWeather(city);
  }
}
