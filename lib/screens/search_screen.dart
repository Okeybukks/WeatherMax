import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/theme.dart';
import 'package:untitled/utilities/frosted_glass_widget.dart';
import 'package:untitled/utilities/weather_property_widget.dart';

import '../constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return GestureDetector(
      onTap: () {
        FocusNode currentFocusNode = FocusScope.of(context);
        if (!currentFocusNode.hasPrimaryFocus) {
          currentFocusNode.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Search for city'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                height: height * 0.06,
                child: Material(
                  elevation: 8,
                  shadowColor: Colors.black,
                  borderRadius: kBorderRadius2,
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    // style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: kBorderRadius2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.06),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  'Recent Search',
                  style: kTextStyle1,
                ),
              ),
              SizedBox(height: height * 0.05),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'images/world2.png',
                        ),
                      )),
                    ),
                    Center(
                      child: FrostedGlassWidget(
                        height: height * 0.3,
                        width: width * 0.9,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Text(
                                      'Aba',
                                      style: kTextStyle2,
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Icon(Icons.my_location_rounded)
                                  ]),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.favorite_border,
                                    ),
                                    onPressed: () {},
                                  )
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '31°c',
                                          style: kTextStyle3,
                                        ),
                                        SizedBox(
                                          height: height * 0.001,
                                        ),
                                        Text(
                                          'moderate rain',
                                          style: kTextStyle4,
                                        )
                                      ]),
                                  Container(
                                    height: height * 0.15,
                                    width: height * 0.15,
                                    child: Image.asset('images/cloud/29.png'),
                                  )
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WeatherPropWidget(
                                  weatherProperty: Text('Wind'),
                                  weatherValue: Text('2.7 m/s'),
                                ),
                                WeatherPropWidget(
                                  weatherProperty: Text('Clouds'),
                                  weatherValue: Text('99 %'),
                                ),
                                WeatherPropWidget(
                                  weatherProperty: Text('Visibility'),
                                  weatherValue: Text('7.25 km'),
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Favourites',
                      style: kTextStyle1,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              Center(
                child: Material(
                  elevation: 8,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  child: Consumer<MyThemeProvider>(
                    builder: (context, myThemeProvider, child){
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: height * 0.02, vertical: width * 0.03),
                        height: height * 0.09,
                        width: width * 0.90,
                        decoration: BoxDecoration(
                            color: myThemeProvider.colorData,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Aba',
                                  style: kTextStyle1,
                                ),
                                Text('NG', style: kTextStyle1)
                              ],
                            ),
                            Container(
                                height: height * 0.06,
                                width: height * 0.10,
                                child: Image.asset(
                                  'images/cloud/29.png',
                                  fit: BoxFit.cover,
                                )),
                            IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.search,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      );
                    }
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
