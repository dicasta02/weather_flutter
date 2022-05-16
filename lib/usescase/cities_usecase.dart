import 'package:dartz/dartz.dart';
import 'package:weather_app/utils/failures.dart';

abstract class CitiesUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
