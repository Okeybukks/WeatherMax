import 'package:flutter/material.dart';

import '../constants.dart';

class WeatherListTile extends StatelessWidget {
  const WeatherListTile({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(bottom:  height * 0.02),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10)),
            height: height * 0.08,
            padding: EdgeInsets.all(height * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dateString3,
                      style: kTextStyle6,
                    ),
                    Text(
                      dateString2,
                      style: kTextStyle1,
                    )
                  ],
                ),
                Container(
                  height: height * 0.07,
                  width: height * 0.07,
                  child: Image.asset(
                      'images/cloud/29.png'),
                ),
                Text('26.2/26.0°c', style: kTextStyle6)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
