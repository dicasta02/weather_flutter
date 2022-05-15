// Mocks generated by Mockito 5.1.0 from annotations
// in weather/test/features/weather/data/repositories/weather_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:weather_app/utils/network_info.dart' as _i6;
import 'package:weather_app/utils/lat_long.dart' as _i5;
import 'package:weather_app/data/models/weather_model.dart' as _i2;
import 'package:weather_app/data/datasources/weather_remote_data_source.dart'
    as _i3;

class _FakeWeatherModel_0 extends _i1.Fake implements _i2.WeatherModel {}

class MockWeatherRemoteDataSource extends _i1.Mock
    implements _i3.WeatherRemoteDataSource {
  MockWeatherRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.WeatherModel> getWeather(_i5.LatLong? latLong) =>
      (super.noSuchMethod(Invocation.method(#getWeather, [latLong]),
              returnValue:
                  Future<_i2.WeatherModel>.value(_FakeWeatherModel_0()))
          as _i4.Future<_i2.WeatherModel>);
}

class MockNetworkInfo extends _i1.Mock implements _i6.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
