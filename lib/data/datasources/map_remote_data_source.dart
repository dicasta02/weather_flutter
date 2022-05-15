import 'package:flutter/services.dart';
import 'package:weather_app/data/models/map_model.dart';
import 'package:weather_app/utils/exceptions.dart';

abstract class MapRemoteDataSource {
  Future<MapModel> getMaps(String mapType, int x, int y, int zoom);
}

class MapRemoteDataSourceImpl extends MapRemoteDataSource {
  String key = "d4ef35c212318fcc519d543780d8c289";
  @override
  Future<MapModel> getMaps(String mapType, int x, int y, int zoom) async {
    try {
      final uri = Uri.parse(
          "https://tile.openweathermap.org/map/$mapType/$zoom/$x/$y.png?appid=$key");

      final ByteData imageData = await NetworkAssetBundle(uri).load("");
      return MapModel.fromByteData(imageData);
    } catch (e) {
      throw ServerException();
    }
  }
}
