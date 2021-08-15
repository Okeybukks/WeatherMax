import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
    required this.dateString,
  }) : super(key: key);

  final String dateString;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  dateString,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(' ISLAMABAD', style: TextStyle(fontSize: 20),),
                      Text(', Pakistan', style: TextStyle(fontSize: 16))
                    ],)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}