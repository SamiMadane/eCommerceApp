
import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';
import '../resources/manager_text_theme_dark.dart';

ThemeData managerDarkThemeData (){
  return ThemeData.dark().copyWith(
    useMaterial3: true,

    /// MAIN COLOR APP
    primaryColor: ManagerColors.primaryColor,
    // primaryColorDark: ManagerColors.primaryColorDark,
    // disabledColor: ManagerColors.disableColor,
    // splashColor: ManagerColors.greyLight,
    // scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorDark,

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
      // buttonColor: ManagerColors.buttonColorDarK,
    ),

    textTheme: ManagerTextThemeDark(),

  );
}