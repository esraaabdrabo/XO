import 'package:flutter/cupertino.dart';

class SizeConf {
  static late double screenWidth;
  static late double screenHeight;
  static late double textScaleFactor;
  static late Orientation orientation;
  //static late double mobBreakPoint = 0;
  //static late double labBreakPoint = 0;

  SizeConf(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    textScaleFactor = MediaQuery.of(context).textScaleFactor;
    orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      screenWidth = screenHeight;
      screenHeight = MediaQuery.of(context).size.width;
    }
  }
}
