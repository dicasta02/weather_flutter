import 'package:dartz/dartz.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/usescase/cities_params.dart';
import 'package:weather_app/usescase/cities_usecase.dart';
import 'package:weather_app/utils/failures.dart';

class GetCities implements CitiesUseCase<Weather, CitiesParams> {
  final WeatherRepository repository;

  GetCities(this.repository);
  @override
  Future<Either<Failure, Weather>> call(CitiesParams params) async {
    return await repository.getCities(params.name);
  }
}
