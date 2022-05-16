import 'package:weather_app/utils/assets.dart';

class City {
  final String? name;
  final String? image;
  final String? population;
  final String? country;

  City({this.name, this.country, this.population, this.image});

  City.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        image = json['image'],
        population = json['population'],
        country = json['country'];

  static List<City> allCities() {
    var lstOfCities = <City>[];
    lstOfCities.add(new City(
        name: "Medellin",
        country: "Colombia",
        population: "2 533 424 hab.",
        image: Assets.medellin));
    lstOfCities.add(new City(
        name: "Bogota",
        country: "Colombia",
        population: "	7 901 653 hab",
        image: Assets.bogota));
    lstOfCities.add(new City(
        name: "Cali",
        country: "Colombia",
        population: "	2 545 682 hab",
        image: Assets.cali));
    lstOfCities.add(new City(
        name: "Pasto",
        country: "Colombia",
        population: "460 638 hab",
        image: Assets.pasto));
    lstOfCities.add(new City(
        name: "Bucaramanga",
        country: "Colombia",
        population: "	612 274 hab.",
        image: Assets.bucaramanga));
    lstOfCities.add(new City(
        name: "Ibague",
        country: "Colombia",
        population: "541 101 hab",
        image: Assets.ibague));
    return lstOfCities;
  }
}
