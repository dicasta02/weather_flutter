import 'package:dartz/dartz.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/utils/exceptions.dart';
import 'package:weather_app/utils/failures.dart';
import 'package:weather_app/utils/get_city_parameter.dart';

abstract class GetCity {
  Future<Either<Failure, City>> getCity();
}

class GetCityImpl implements GetCity {
  @override
  Future<Either<Failure, City>> getCity() async {
    try {
      final name = await GetParameter();

      return Right(City(name: name.toString()));
    } on LocationException {
      return Left(LocationFailure());
    }
  }
}
