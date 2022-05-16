import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/utils/exceptions.dart';

abstract class CitiesRemoteDataSource {
  Future<WeatherModel> getCities(City name);
}

class CitiesRemoteDataSourceImpl implements CitiesRemoteDataSource {
  final http.Client client;

  CitiesRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<WeatherModel> getCities(City name) async {
    String key = "d4ef35c212318fcc519d543780d8c289";
    final response = await client.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q={$name}&appid=}$key"),
      headers: {'content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
