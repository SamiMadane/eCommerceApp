import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import '../../config/constant.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_sizes.dart';


Widget mainButton({
  required Widget child,
  void Function() ? onPressed,
  ShapeBorder? shapeBorder,
  Color? color,
  double? minWidth,
  double? height,
  double? elevation,
}) {
  return MaterialButton(
    onPressed: onPressed.onNull(),
    shape: shapeBorder ,
    color: color.onNull(),
    minWidth: minWidth.onNull(),
    height: height.onNull(),
    elevation: elevation.onNull(),
    child: child,
  );
}
