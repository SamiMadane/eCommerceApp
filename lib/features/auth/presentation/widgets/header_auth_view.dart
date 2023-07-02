import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget headerAuthView({
  required String mainText,
  required String secondaryText,
}) {
  return Column(
    children: [
      SizedBox(
        height: ManagerHeight.h80,
      ),
      Container(
        width: ManagerWidth.w89,
        height: ManagerHeight.h101,
        child: SvgPicture.asset(
          ManagerAssets.logo,
        ),
      ),
      SizedBox(
        height: ManagerHeight.h30,
      ),
      Text(
        mainText,
        textAlign: TextAlign.center,
        style: getBoldTextStyle(
          color: ManagerColors.black,
          fontSize: ManagerFontSize.s32,
          letterSpacing: -0.64,
        ),
      ),
      SizedBox(
        height: ManagerHeight.h8,
      ),
      Text(
        secondaryText,
        textAlign: TextAlign.center,
        style: getMediumTextStyle(
          color: ManagerColors.textgreyColor,
          fontSize: ManagerFontSize.s18,
          letterSpacing: -0.18,
        ),
      ),
    ],
  );
}
