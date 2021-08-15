import 'package:flutter/material.dart';
// import '/constants.dart';

class BackgroundSwitch extends StatelessWidget {
  // final VoidCallback customFunction1;
  // final VoidCallback customFunction2;
  // BackgroundSwitch({required this.customFunction1, required this.customFunction2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.bedtime_outlined,
                  // color:
                  // appBackgroundColor == BackgroundColor.dark
                  //     ? Colors.white
                  //     : Colors.grey
              ),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints()),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: appBackgroundColor == BackgroundColor.dark
              //     ? Color(0xFFf0f306)
              //     : Colors.transparent
          ),
          padding: EdgeInsets.all(4),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.brightness_5_sharp,
                // color:
                // appBackgroundColor == BackgroundColor.light
                //     ? Colors.white
                //     : Colors.grey,
              ),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints()),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: appBackgroundColor == BackgroundColor.light
              //     ? Color(0xFFf0f306)
              //     : Colors.transparent
          ),
          padding: EdgeInsets.all(4),
        )
      ],
    );
  }
}