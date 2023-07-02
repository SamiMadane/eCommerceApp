import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget willPopScope({
  required Widget child
}) {
  return WillPopScope(
    child: child,
    onWillPop: () async => false,
  );
}
