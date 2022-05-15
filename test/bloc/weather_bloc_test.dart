import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/blocs/weatherbloc/weather_bloc.dart';
import 'package:weather_app/usescase/get_weather.dart';
import 'package:weather_app/usescase/weather_params.dart';
import 'package:weather_app/utils/failures.dart';
import 'package:weather_app/utils/get_lat_long.dart';

import '../data/models/models.dart';
import 'weather_bloc_test.mocks.dart';

@GenerateMocks([GetWeather])
@GenerateMocks([GetLatLongImpl])
void main() {
  late WeatherBloc weatherBloc;
  late MockGetWeather mockGetWeather;
  late MockGetLatLongImpl mockGetLatLongImpl;
  setUp(() {
    mockGetWeather = MockGetWeather();
    mockGetLatLongImpl = MockGetLatLongImpl();
    weatherBloc = WeatherBloc(
      getLatLong: mockGetLatLongImpl,
      getWeather: mockGetWeather,
    );
  });
  test("initialState should be Empty", () {
    expect(weatherBloc.initialState, equals(Empty()));
  });

  group(
    "GetWeatherForLatLong",
    () {
      test(
        'should call the GetLatLong to validate and get the lat and long',
        () async* {
          when(mockGetLatLongImpl.getLatLong())
              .thenAnswer((_) async => Right(tLatLng));

          weatherBloc.add(GetWeatherForLatLong());
          await untilCalled(mockGetLatLongImpl.getLatLong());

          verify(mockGetLatLongImpl.getLatLong());
        },
      );

      test(
        'should emit [Error] when Unable to get Location or permission denied by useer',
        () async* {
          when(mockGetLatLongImpl.getLatLong())
              .thenAnswer((_) async => Left(LocationFailure()));
          final expected = [
            Empty(),
            Error(message: LOCATION_FAILURE_MESSAGE),
          ];
          expectLater(weatherBloc.state, emitsInOrder(expected));

          weatherBloc.add(GetWeatherForLatLong());
        },
      );

      test(
        'should get data from weather use case',
        () async* {
          when(mockGetLatLongImpl.getLatLong())
              .thenAnswer((_) async => Right(tLatLng));
          when(mockGetWeather(any)).thenAnswer((_) async => Right(tWeather));
          weatherBloc.add(GetWeatherForLatLong());
          await untilCalled(mockGetWeather(any));
          verify(mockGetWeather(WeatherParams(latLong: tLatLng)));
        },
      );
      test(
        'should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
          when(mockGetLatLongImpl.getLatLong())
              .thenAnswer((_) async => Right(tLatLng));
          when(mockGetWeather(any)).thenAnswer((_) async => Right(tWeather));

          final expected = [
            Empty(),
            Loading(),
            Loaded(weather: tWeather),
          ];

          expectLater(weatherBloc.state, emitsInOrder(expected));

          weatherBloc.add(GetWeatherForLatLong());
        },
      );
      test(
        'should emit [Loading, Error] when data is getting failed',
        () async* {
          when(mockGetLatLongImpl.getLatLong())
              .thenAnswer((_) async => Right(tLatLng));
          when(mockGetWeather(any))
              .thenAnswer((_) async => Left(ServerFailure()));

          final expected = [
            Empty(),
            Loading(),
            Error(message: SERVER_FAILURE_MESSAGE),
          ];

          expectLater(weatherBloc.state, emitsInOrder(expected));
          weatherBloc.add(GetWeatherForLatLong());
        },
      );
    },
  );
}
