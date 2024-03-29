import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class MyThemeData {
  static var redColor = const Color(0xffF9433F);
  static var movColor = const Color(0xffF9489D);
  static var pinkColor = const Color(0xffFBB9AF);
  static var offWhiteColor = const Color(0xffFEEEA6);
  static var yellowColor = const Color.fromARGB(255, 224, 244, 136);
  static var greenColor = const Color.fromARGB(255, 38, 200, 82);
////////////////////font style////////////////////////////
  static whiteTs(BuildContext context) {
    return GoogleFonts.recursive(
      textStyle: TextStyle(
          fontSize: MediaQuery.of(context).size.height * .035,
          color: Colors.white,
          shadows: const[
            BoxShadow(
                offset: Offset(
                  -2,
                  2,
                ),
                blurRadius: 2)
          ]),
    );
  }
}
