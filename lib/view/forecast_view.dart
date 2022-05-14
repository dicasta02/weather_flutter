import 'package:flutter/material.dart';

class ForecastView extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const ForecastView());

  const ForecastView({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ForecastPageViewState();
}

class _ForecastPageViewState extends State<ForecastView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late PageController _pageController;

  late AnimationController _hideFabAnimationController;
  late ValueNotifier<int> _currentForecastNotifier;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _hideFabAnimationController.dispose();
    _currentForecastNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) =>
      Scaffold(
        key: _scaffoldKey,
      );
}
