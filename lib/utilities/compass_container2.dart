import 'package:flutter/material.dart';
import 'package:untitled/utilities/wihupr_widget.dart';
import 'package:weather_icons/weather_icons.dart';

class CompassContainer2 extends StatelessWidget {
  const CompassContainer2({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: Color(0xFF121213),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20)),
        height: height * 0.13,
        width: width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WiHuPrWidget(weatherValue: '5.5m/s',weatherIcon: WeatherIcons.day_windy, weatherProp: 'Wind',),
              WiHuPrWidget(weatherValue: '76%',weatherIcon: WeatherIcons.humidity, weatherProp: 'Humidity',),
              WiHuPrWidget(weatherValue: '1014hPa',weatherIcon: WeatherIcons.barometer, weatherProp: 'Wind',)
            ],
          ),
        ),
      ),
    );
  }
}
