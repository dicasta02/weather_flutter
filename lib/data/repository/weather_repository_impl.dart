import 'package:dartz/dartz.dart';
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/utils/exceptions.dart';
import 'package:weather_app/utils/failures.dart';
import 'package:weather_app/utils/lat_long.dart';
import 'package:weather_app/utils/network_info.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl({
    required this.weatherRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Weather>> getWeather(LatLong latLong) async {
    if (await networkInfo.isConnected) {
      try {
        final weatherRemoteData =
            await weatherRemoteDataSource.getWeather(latLong);
        return Right(weatherRemoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
