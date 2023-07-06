import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/features/home/presentation/widget/rating_bar.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

Widget buildGridProducts(context) => InkWell(
      onTap: () {
        Get.offAllNamed(Routes.productDetailsView);
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: ManagerHeight.h170,
                width: ManagerWidth.w170,
                color: ManagerColors.backGroundImage,
              ),
              Container(
                height: ManagerHeight.h128,
                width: ManagerWidth.w128,
                child: Image.asset(
                  ManagerAssets.watch,
                  width: double.infinity,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ManagerHeight.h20,
              ),
              RatingBar(),
              SizedBox(height: ManagerHeight.h8,),
              Text(
                'Camera Canon Pro Max',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getTextStyle(
                    fontSize: ManagerFontSize.s16,
                    height: 1.3,
                    color: ManagerColors.black,
                    weight: ManagerFontWeight.w600),
              ),

              SizedBox(
                height: ManagerHeight.h6,
              ),

              Text(
                '\$120.00',
                style: getTextStyle(
                    fontSize: ManagerFontSize.s16,
                    height: 1.3,
                    color: ManagerColors.primaryColor,
                    weight: ManagerFontWeight.w800),
              ),
            ],
          ),
        ],
      ),
    );
