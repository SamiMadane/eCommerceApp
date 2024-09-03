import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:flutter/cupertino.dart';

Widget SwipWide ({required double size}){
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: ManagerStrings.swip,
          style: getTextStyle(
            fontSize: size,
            color: ManagerColors.textPrimaryColor,
            weight: ManagerFontWeight.w900,
          ),
        ),
        TextSpan(
          text: ManagerStrings.wide,
          style: getTextStyle(
            fontSize: size,
            color: ManagerColors.textColorLight,
            weight: ManagerFontWeight.w900,
          ),
        ),
      ],
    ),
  );
}