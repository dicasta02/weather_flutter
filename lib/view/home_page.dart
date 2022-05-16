import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/appication_colors.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/size_config.dart';
import 'package:weather_app/view/cities_page.dart';
import 'package:weather_app/view/weather_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<City> _allCities = [
    City(
        name: "Medellin",
        country: "Colombia",
        population: "2 533 424 hab.",
        image: Assets.medellin),
    City(
        name: "Bogota",
        country: "Colombia",
        population: "	7 901 653 hab",
        image: Assets.bogota),
    City(
        name: "Cali",
        country: "Colombia",
        population: "	2 545 682 hab",
        image: Assets.cali),
    City(
        name: "Pasto",
        country: "Colombia",
        population: "460 638 hab",
        image: Assets.pasto),
    City(
        name: "Bucaramanga",
        country: "Colombia",
        population: "	612 274 hab.",
        image: Assets.bucaramanga),
    City(
        name: "Ibague",
        country: "Colombia",
        population: "541 101 hab",
        image: Assets.ibague)
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(S.of(context).title),
          actions: [
            IconButton(
              icon: Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons')),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WeatherPage(),
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: ApplicationColors().neutralGrayColor,
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allCities.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: new Column(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            _allCities[index].image!,
            fit: BoxFit.cover,
            width: 100.0,
          ),
          title: new Text(
            _allCities[index].name!,
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_allCities[index].country!,
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                new Text('Población: ${_allCities[index].population}',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CitiesPage(
                  city: _allCities[index].name,
                ),
              ),
            );
          },
        )
      ],
    ));
  }
}
