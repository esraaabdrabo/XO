import 'package:flutter/material.dart';
import 'package:xo/assets/size_config.dart';
import 'package:xo/assets/theme.dart';

var bgCircles = Stack(
  children: [
    smallcircle(MyThemeData.greenColor, -1, .2),
    smallcircle(MyThemeData.greenColor, -.1, 1),
    smallcircle(MyThemeData.greenColor, 1, .8),
    bigcircle(MyThemeData.yellowColor, .8, .6),
    smallcircle(MyThemeData.pinkColor, -.7, -.9),
    smallcircle(MyThemeData.pinkColor, 1, -.3),
    smallcircle(MyThemeData.yellowColor, .1, -.8),
  ],
);

smallcircle(Color thisColor, double dx, double dy) {
  return Container(
    alignment: Alignment(dx, dy),
    child: Container(
      height: SizeConf.screenHeight * .1,
      width: SizeConf.screenWidth * .15,
      decoration: BoxDecoration(
          border:
              Border.all(color: thisColor, width: 5, style: BorderStyle.solid),
          shape: BoxShape.circle),
    ),
  );
}

bigcircle(Color thisColor, double dx, double dy) {
  return Container(
    alignment: Alignment(dx, dy),
    child: Container(
      height: SizeConf.screenHeight * .25,
      width: SizeConf.screenWidth * .25,
      decoration: BoxDecoration(
          border:
              Border.all(color: thisColor, width: 5, style: BorderStyle.solid),
          shape: BoxShape.circle),
    ),
  );
}
