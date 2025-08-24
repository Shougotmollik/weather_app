import 'dart:convert';

/// Top-level WeatherModel (root object)
class WeatherModel {
  final Location? location;
  final Current? current;
  final Forecast? forecast;

  WeatherModel({this.location, this.current, this.forecast});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: json['location'] != null
            ? Location.fromJson(json['location'])
            : null,
        current:
            json['current'] != null ? Current.fromJson(json['current']) : null,
        forecast: json['forecast'] != null
            ? Forecast.fromJson(json['forecast'])
            : null,
      );

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
        'forecast': forecast?.toJson(),
      };

  /// Helper: Parse JSON string directly
  static WeatherModel fromJsonString(String str) =>
      WeatherModel.fromJson(json.decode(str));

  String toJsonString() => json.encode(toJson());
}

/// Location details
class Location {
  final String? name;
  final String? region;
  final String? country;
  final String? localtime;

  Location({this.name, this.region, this.country, this.localtime});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        localtime: json['localtime'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'localtime': localtime,
      };
}

/// Current weather
class Current {
  final double? tempC;
  final double? tempF;
  final Condition? condition;
  final double? windKph;
  final int? humidity;

  Current(
      {this.tempC, this.tempF, this.condition, this.windKph, this.humidity});

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        tempC: (json['temp_c'] as num?)?.toDouble(),
        tempF: (json['temp_f'] as num?)?.toDouble(),
        condition: json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
        windKph: (json['wind_kph'] as num?)?.toDouble(),
        humidity: json['humidity'],
      );

  Map<String, dynamic> toJson() => {
        'temp_c': tempC,
        'temp_f': tempF,
        'condition': condition?.toJson(),
        'wind_kph': windKph,
        'humidity': humidity,
      };
}

/// Condition (icon, text, code)
class Condition {
  final String? text;
  final String? icon;
  final int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json['text'],
        icon: json['icon'],
        code: json['code'],
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
        'code': code,
      };
}

/// Forecast with multiple days
class Forecast {
  final List<ForecastDay>? forecastday;

  Forecast({this.forecastday});

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
        forecastday: (json['forecastday'] as List<dynamic>?)
            ?.map((e) => ForecastDay.fromJson(e))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'forecastday': forecastday?.map((e) => e.toJson()).toList(),
      };
}

/// Single day forecast
class ForecastDay {
  final String? date;
  final Day? day;

  ForecastDay({this.date, this.day});

  factory ForecastDay.fromJson(Map<String, dynamic> json) => ForecastDay(
        date: json['date'],
        day: json['day'] != null ? Day.fromJson(json['day']) : null,
      );

  Map<String, dynamic> toJson() => {
        'date': date,
        'day': day?.toJson(),
      };
}

/// Day details (max/min temp, condition)
class Day {
  final double? maxtempC;
  final double? mintempC;
  final Condition? condition;

  Day({this.maxtempC, this.mintempC, this.condition});

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
        mintempC: (json['mintemp_c'] as num?)?.toDouble(),
        condition: json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
      );

  Map<String, dynamic> toJson() => {
        'maxtemp_c': maxtempC,
        'mintemp_c': mintempC,
        'condition': condition?.toJson(),
      };
}
