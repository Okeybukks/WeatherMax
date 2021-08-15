import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback customFunc1;
  final VoidCallback customFunc2;

  const CustomAppBar({
    Key? key,
    required this.dateString,
    required this.customFunc1,
    required this.customFunc2,
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
                textBaseline: TextBaseline.alphabetic,
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Icon(
                    Icons.location_pin,
                  ),
                  Text(
                    'ISLAMABAD,',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    ' Pakistan',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Container(
                  child: IconButton(
                      onPressed: customFunc1,
                      icon: Icon(
                        Icons.bedtime_outlined,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints()),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(4),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: IconButton(
                      onPressed: customFunc2,
                      icon: Icon(
                        Icons.brightness_5_sharp,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints()),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(4),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
