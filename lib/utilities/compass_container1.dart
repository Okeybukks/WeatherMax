import 'package:flutter/material.dart';
import '../constants.dart';

class CompassContainer1 extends StatelessWidget {
  const CompassContainer1({
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
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20)),
        height: height * 0.18,
        width: width,
        child: Padding(
          padding: EdgeInsets.all(width * 0.07),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.18,
                width: height * 0.18,
                child: Image.asset('images/cloud/29.png'),
              ),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    dateString,
                    style: kTextStyle1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2),
                    child: Text(
                      '31°c',
                      style: kTextStyle5,
                    ),
                  ),
                  Text(
                    'Overcast clouds',
                    style: kTextStyle1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}