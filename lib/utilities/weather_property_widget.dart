import 'package:flutter/material.dart';

class WeatherPropWidget extends StatelessWidget {
  final Widget weatherProperty;
  final Widget weatherValue;

  const WeatherPropWidget({
    Key? key, required this.weatherProperty, required this.weatherValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [weatherProperty, weatherValue],);
  }
}
