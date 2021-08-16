import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:untitled/constants.dart';

class WiHuPrWidget extends StatelessWidget {
  final String weatherProp, weatherValue;
  final IconData weatherIcon;

  const WiHuPrWidget({
    Key? key, required this.weatherProp, required this.weatherValue, required this.weatherIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxedIcon(
          weatherIcon,
          size: 20,
          color: Theme.of(context).canvasColor,
        ),
        Text(
          weatherValue,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Text(
          weatherProp,
          style: kTextStyle1,
        )
      ],
    );
  }
}