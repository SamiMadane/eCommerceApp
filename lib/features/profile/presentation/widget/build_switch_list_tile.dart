import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';

Widget buildSwitchListTile(
    String title, bool currentValue, ValueChanged<bool> updateValue) {
  return SwitchListTile(
    title: Text(
      title,
      style: getTextStyle(
        fontSize: ManagerFontSize.s20,
        color: ManagerColors.black,
        weight: ManagerFontWeight.w600,
      ),
    ),
    contentPadding:  EdgeInsets.zero,
    activeColor: ManagerColors.primaryColor,
    inactiveTrackColor: ManagerColors.textgreyOpacityColor,
    inactiveThumbColor: ManagerColors.textgreyColor,
    value: currentValue,
    onChanged: updateValue,
  );
}
