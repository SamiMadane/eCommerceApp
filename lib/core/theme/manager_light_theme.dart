import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';
import '../resources/manager_text_theme_light.dart';

ThemeData managerLightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,

    /// MAIN COLOR APP
    primaryColor: ManagerColors.primaryColor,
    // primaryColorLight: ManagerColors.primaryColorLight,
    // disabledColor: ManagerColors.textColor,
    // splashColor: ManagerColors.greyLight,
    // scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorlight,

    /// APP BAR THEME
    appBarTheme: AppBarTheme(
      centerTitle: true,
      // color: ManagerColors.greyLight,
      elevation: Constants.elevationAppBar,
      titleTextStyle: getBoldTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.primaryColor,
      ),
    ),

    /// BUTTON THEME
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(),
      // disabledColor: ManagerColors.greyLight,
      // buttonColor: ManagerColors.buttonColorLight,
    ),

    textTheme: ManagerTextThemelight(),

  );
}
