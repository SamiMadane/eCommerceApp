import 'package:e_commerce/core/cache/cache.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/features/home/presentation/controller/home_controller.dart';
import 'package:e_commerce/features/home/presentation/widget/rating_bar.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shimmer/shimmer.dart';

Shimmer buildGridProductsShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Column(
      children: [
        Container(
          height: ManagerHeight.h170,
          width: ManagerWidth.w170,
          color: ManagerColors.white,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Container(
              height: ManagerHeight.h22,
              width: ManagerWidth.w100,
              color: ManagerColors.white,
            ),
            SizedBox(
              height: ManagerHeight.h8,
            ),
            Container(
              height: ManagerHeight.h30,
              width: ManagerWidth.w120,
              color: ManagerColors.white,
            ),
            SizedBox(
              height: ManagerHeight.h6,
            ),
            Container(
              height: ManagerHeight.h22,
              width: ManagerWidth.w65,
              color: ManagerColors.white,
            )
          ],
        ),
      ],
    ),
  );
}
