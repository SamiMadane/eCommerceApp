import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget willPopScope({
  required Widget child,
  required Future<bool> Function() onWillPop,
}) {
  return WillPopScope(
    child: child,
    onWillPop: () => onWillPop(),
  );
}
