import 'package:flutter/material.dart';
import '/constants.dart';

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: height * 0.06,
            width: width * 0.16,
            child: Image(
              image: AssetImage('images/cloud/22.png'),
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 10,
        ),
        Text(
          '01:00 pm',
          style: TextStyle(
              fontSize: width * 0.04),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: width * 0.09,
          child: Stack(
            children: [
              Text('11',
                  style: TextStyle(
                      fontSize: width * 0.08,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PublicSans')),
              Positioned(
                  top: 3,
                  right: 2,
                  child: Icon(
                    Icons.trip_origin_rounded,
                    size: 5,
                    color: Color(0xFFf0f306),
                  ))
            ],
          ),
        )
      ],
    );
  }
}