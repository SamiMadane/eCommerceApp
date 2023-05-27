import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'manager_fonts.dart';

// _________________________________________________

TextStyle _textStyle ({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
  required TextDecoration decoration,

}){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    decoration: decoration,
  );
}

// _________________________________________________

TextStyle getRegularTextStyle ({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,

}){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: ManagerFontWeight.regular,
    fontFamily: ManagerFontFamily.fontFamily,
    decoration: decoration,
  );
}

// _________________________________________________

TextStyle getBoldTextStyle ({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,

}){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: ManagerFontWeight.bold,
    fontFamily: ManagerFontFamily.fontFamily,
    decoration: decoration,
  );
}

 // _________________________________________________

TextStyle getMediumTextStyle ({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,

}){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: ManagerFontWeight.medium,
    fontFamily: ManagerFontFamily.fontFamily,
    decoration: decoration,
  );
}

TextStyle getTextStyle ({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  FontWeight? weight,

}){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: weight?? ManagerFontWeight.medium,
    fontFamily: ManagerFontFamily.fontFamily,
    decoration: decoration,
  );
}