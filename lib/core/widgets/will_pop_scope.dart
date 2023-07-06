import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget willPopScope({
  required Widget child,
  required bool back,

}) {
  return WillPopScope(
    child: child,
    onWillPop: () async => back,
  );
}
