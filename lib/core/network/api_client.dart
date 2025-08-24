import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/core/error/app_exceptions.dart';

class ApiClient {
  final http.Client client;

  ApiClient({required this.client});

  Future<Map<String, dynamic>> getRequest(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ServerExceptions('Error :${response.statusCode}');
    }
  }
}
