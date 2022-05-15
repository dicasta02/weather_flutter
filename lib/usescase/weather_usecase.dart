import 'package:dartz/dartz.dart';
import 'package:weather_app/utils/failures.dart';

abstract class WeatherUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
