import 'package:dartz/dartz.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/utils/failures.dart';
import 'package:weather_app/utils/lat_long.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getWeather(LatLong latLong);

  Future<Either<Failure, Weather>> getCities(City name);
}
