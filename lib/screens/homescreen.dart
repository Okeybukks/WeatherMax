import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utilities/forecast_widget.dart';
import 'package:untitled/utilities/temperature_condition.dart';
import '../constants.dart';
import '/utilities/appbar_title.dart';
import '/theme.dart';
import 'package:untitled/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        title: AppBarTitle(dateString: dateString),
        elevation: 0,
        actions: [
          IconButton(
            icon: Consumer<MyThemeProvider>(
              builder: (context, myThemeData, child) {
                return myThemeData.iconData;
              },
            ),
            onPressed: () {
              MyThemeProvider myThemeProvider =
                  Provider.of<MyThemeProvider>(context, listen: false);
              myThemeProvider.swapTheme();
              myThemeProvider.swapIcon();
              myThemeProvider.swapColor();
            },
          ),
        ],
      ),
      body: Container(
        width: width,
        margin: EdgeInsets.only(top: height * 0.05),
        child: Column(
          children: [
            HomeTempStack(height: height, width: width),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              children: [
                Expanded(child: ForecastWidget(height: height, width: width)),
                Expanded(child: ForecastWidget(height: height, width: width)),
                Expanded(child: ForecastWidget(height: height, width: width)),
              ],
            )
          ],
        ),
      ),
    );
  }
}


