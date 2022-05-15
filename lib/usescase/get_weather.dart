import 'package:dartz/dartz.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/usescase/weather_params.dart';
import 'package:weather_app/usescase/weather_usecase.dart';
import 'package:weather_app/utils/failures.dart';

class GetWeather implements WeatherUseCase<Weather, WeatherParams> {
  final WeatherRepository repository;

  GetWeather(this.repository);
  @override
  Future<Either<Failure, Weather>> call(WeatherParams params) async {
    return await repository.getWeather(params.latLong);
  }
}
