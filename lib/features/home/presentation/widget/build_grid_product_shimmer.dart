import 'package:e_commerce/core/cache/cache.dart';
import 'package:e_commerce/core/resources/manager_assets.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ManagerHeight.h20,
        ),
        Container(
          height: 150,
          padding: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w10,
            vertical: ManagerHeight.h10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ManagerRadius.r14),
            image: DecorationImage(
                image: AssetImage(ManagerAssets.profile) as ImageProvider,
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "sssssssssss",
                style: getRegularTextStyle(
                  fontSize: ManagerFontSize.s16,
                  color: ManagerColors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ...List.generate(
                    3,
                        (index) => Container(
                      width: ManagerWidth.w8,
                      height: ManagerHeight.h8,
                      margin: EdgeInsets.only(left: ManagerWidth.w2),
                      decoration: BoxDecoration(
                        color: ManagerColors.textgreyColor,
                        borderRadius: BorderRadius.circular(
                          ManagerRadius.r10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: ManagerHeight.h20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style: getBoldTextStyle(
                fontSize: ManagerFontSize.s20,
                color: ManagerColors.black,
              ),
            ),
            InkWell(
              child: Text(
                "",
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s14,
                  color: ManagerColors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: ManagerHeight.h10,
        ),
        Container(
          width: double.infinity,
          height: ManagerHeight.h100,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 16,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Container(),
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h10,
                    ),
                    Expanded(
                        child: Container(
                          width: ManagerWidth.w100,
                          child: Text(
                            '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: getTextStyle(
                              fontSize: ManagerFontSize.s16,
                              color: ManagerColors.black,
                              weight: ManagerFontWeight.w300,
                            ),
                          ),
                        )),
                  ],
                );
              }),
        ),
        SizedBox(
          height: ManagerHeight.h10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style: getBoldTextStyle(
                fontSize: ManagerFontSize.s20,
                color: ManagerColors.black,
              ),
            ),
            Text(
              "",
              style: getTextStyle(
                fontSize: ManagerFontSize.s14,
                color: ManagerColors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ManagerHeight.h8,
        ),
        Expanded(
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                crossAxisSpacing: 8.0, // Spacing between columns
                mainAxisSpacing: 8.0, // Spacing between rows
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Stack(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 200,
                          color: ManagerColors.textgreyColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: getTextStyle(
                                    fontSize: ManagerFontSize.s14,
                                    color: ManagerColors.black,
                                    weight: ManagerFontWeight.w300),
                              ),
                              SizedBox(
                                height: ManagerHeight.h6,
                              ),
                              Text(
                                '',
                                style: getTextStyle(
                                    fontSize: ManagerFontSize.s16,
                                    color: ManagerColors.primaryColor,
                                    weight: ManagerFontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    ),
  );
}
