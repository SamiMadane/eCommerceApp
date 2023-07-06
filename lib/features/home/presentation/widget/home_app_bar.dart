import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/widgets/swip_wide_text.dart';
import 'package:flutter/material.dart';

AppBar CustomAppBar ()=> AppBar(
  title: SwipWide(size: ManagerFontSize.s28),
  actions: [
    Container(
      width: ManagerWidth.w50,
      height: ManagerHeight.h50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmc0svkleOzhTl_DwXG4yq7Mx8cAJWOSUJ9Q&usqp=CAU'),
      ),
    ),
    SizedBox(
      width: ManagerWidth.w10,
    ),
  ],
);