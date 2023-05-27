import 'dart:ui';

import 'package:flutter/material.dart';

extension NoNullString on String? {
  String onNull(){
    if (this == null){
      return '';
    }else{
      return this!;
    }
  }
}

extension NoNullDouble on double? {
  double onNull(){
    if (this == null){
      return 0;
    }else{
      return this!;
    }
  }
}

extension NoNullBool on bool? {
  bool onNull(){
    if (this == null){
      return false;
    }else{
      return this!;
    }
  }
}

extension NoNullColor on Color? {
  Color onNull(){
    if (this == null){
      return Colors.transparent;
    }else{
      return this!;
    }
  }
}


extension NoNullFunction on void Function()? {
  void Function() onNull(){
    if (this == null){
      return (){};
    }else{
      return this!;
    }
  }
}


extension NoNullBoolFunction on bool Function()? {
  bool Function() onNull(){
    if (this == null){
      return (){
        return false;
      };
    }else{
      return this!;
    }
  }
}