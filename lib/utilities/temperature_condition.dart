import 'package:flutter/material.dart';
import '/constants.dart';

class HomeTempStack extends StatelessWidget {
  const HomeTempStack({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: height * 0.18,
                  width: width * 0.4,
                  child: Image(
                    image: AssetImage('images/cloud/17.png'),
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Thunder',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.4,
                child: Stack(
                  children: [
                    Text('13',
                        style: TextStyle(
                            fontSize: width * 0.3,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PublicSans')),
                    Positioned(
                        top: 20,
                        right: 0,
                        child: Icon(
                          Icons.trip_origin_rounded,
                          color: Color(0xFFf0f306),
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}