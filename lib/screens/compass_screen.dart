import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utilities/compass_container1.dart';
import 'package:untitled/utilities/compass_container2.dart';
import 'package:untitled/utilities/weather_list_tile.dart';
import '../constants.dart';

class WeatherInfo extends StatefulWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: height * 0.4,
                  width: width * 1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(100, 40),
                          bottomLeft: Radius.elliptical(100, 40))),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: height * 0.025),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: height * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dateString,
                                  style: kTextStyle1,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Victoria Island, NG ',
                                      style: kTextStyle2,
                                    ),
                                    Icon(Icons.my_location_rounded)
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ),
                      ),
                      CompassContainer1(height: height, width: width),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      CompassContainer2(height: height, width: width),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.03, bottom: height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '12-hour forecast',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).canvasColor,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.14,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int length) =>
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: height * 0.008),
                                  child: Material(
                                    elevation: 3,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).cardColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: height * 0.01),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '31°c',
                                              style: kTextStyle1,
                                            ),
                                            Container(
                                              height: height * 0.06,
                                              width: height * 0.06,
                                              child: Image.asset(
                                                  'images/cloud/29.png'),
                                            ),
                                            Text(
                                              '12 PM',
                                              style: kTextStyle1,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.03, bottom: height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '7-day forecast',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return WeatherListTile(height: height);
                              })
                        ],
                      ),
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
