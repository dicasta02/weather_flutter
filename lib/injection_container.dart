import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/blocs/weatherbloc/weather_bloc.dart';
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/usescase/get_weather.dart';
import 'package:weather_app/utils/get_lat_long.dart';
import 'package:weather_app/utils/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => WeatherBloc(
        getLatLong: sl(),
        getWeather: sl(),
      ));

  sl.registerLazySingleton(() => GetWeather(sl()));

  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      weatherRemoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<GetLatLong>(() => GetLatLongImpl());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
