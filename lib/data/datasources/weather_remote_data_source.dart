import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/utils/exceptions.dart';
import 'package:weather_app/utils/lat_long.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getWeather(LatLong latLong);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<WeatherModel> getWeather(LatLong latLong) async {
    String key = "d4ef35c212318fcc519d543780d8c289";
    final response = await client.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/onecall?lat=${latLong.lat}&lon=${latLong.long}&appid=$key"),
      headers: {'content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
