import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/usescase/get_weather.dart';
import 'package:weather_app/usescase/weather_params.dart';

import '../data/models/models.dart';
import 'get_weather_test.mocks.dart';

@GenerateMocks([WeatherRepository])
void main() {
  late GetWeather usecase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetWeather(mockWeatherRepository);
  });

  test(
    'should get currentWeatherData  for the LatLong from repository',
    () async {
      // arrange
      when(mockWeatherRepository.getWeather(any))
          .thenAnswer((_) async => Right(tWeather));

      // act
      final result = await usecase(WeatherParams(latLong: tLatLng));
      // assert
      expect(result, Right(tWeather));
      verify(mockWeatherRepository.getWeather(tLatLng));
      verifyNoMoreInteractions(mockWeatherRepository);
    },
  );
}
