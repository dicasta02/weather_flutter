import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/settings/appication_colors.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/blocs/weatherbloc/weather_bloc.dart';
import 'package:weather_app/injection_container.dart';
import 'package:weather_app/utils/size_config.dart';
import 'package:weather_app/view/map_page.dart';
import 'package:weather_app/widgets/current_weather_view.dart';
import 'package:weather_app/widgets/empty_or_loading.dart';
import 'package:weather_app/widgets/seven_day_weathet_view.dart';
import 'package:weather_app/widgets/today_weather_view.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: ApplicationColors().neutralGrayColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MapPage(),
            ),
          );
        },
        child: Icon(
          Icons.search,
          size: getProportionateScreenHeight(30),
          color: Colors.white,
        ),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<WeatherBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl(),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is Empty) {
            context.read<WeatherBloc>().add(GetWeatherForLatLong());
            return const EmptyOrLoading();
          } else if (state is Loading) {
            return const EmptyOrLoading();
          } else if (state is Loaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CurrentWeatherView(
                      state.weather.currentWeatherData.currentWeatherData),
                  TodaysWeatherView(state.weather.todayWeatherData),
                  SevenDaysView(state.weather.sevenDayWeatherData),
                ],
              ),
            );
          } else {
            return Center(
              child: Text(
                S.of(context).allGenericError,
                style: TextStyle(color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }
}
