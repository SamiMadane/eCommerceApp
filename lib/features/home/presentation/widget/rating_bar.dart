import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


Widget RatingBar () => RatingBarIndicator(
  direction: Axis.horizontal,
  itemCount: 5,
  rating: 3,
  itemSize: ManagerHeight.h22,
  itemPadding: EdgeInsets.symmetric(horizontal: ManagerWidth.w1),
  itemBuilder: (context, _) => Icon(
    Icons.star,
    color: ManagerColors.activeStar,
  ),
);