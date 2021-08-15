import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'dart:ui';

class FrostedGlassWidget extends StatelessWidget {
  final double height, width;
  final Widget child;

  const FrostedGlassWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kBorderRadius,
      child: Stack(children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: height,
            width: width,
          ),
        ),
        Container(
            height: height,
            width: width,
            child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'images/noise.png',
                  fit: BoxFit.cover,
                ))),
        Container(
          height: height,
          width: width,
          child: child,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 30)
              ],
              border:
              Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
              borderRadius: kBorderRadius,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.2)
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        )
      ]),
    );
  }
}
