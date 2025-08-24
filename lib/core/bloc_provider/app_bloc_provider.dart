import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/cubit/weather_cubit/weather_cubit.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/data/source/weather_remote_data_source.dart';

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) {
          final apiClient = ApiClient(client: http.Client());
          final remoteDataSource = WeatherRemoteDataSource(apiClient);
          final repository = WeatherRepository(remoteDataSource);
          return WeatherCubit(repository);
        },
      )
    ], child: child);
  }
}
