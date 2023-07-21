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

Widget buildGridProducts({context, index, isSearch}) =>
    GetBuilder<HomeController>(
      builder: (controller) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                CacheData cacheData = CacheData();
                // isSearch ?
                cacheData.setID(
                        controller.homeDataModel?.products?[index].id as int);
                    // : cacheData.setID(controller
                    //     .searchDataModel?.dataDetails?[index].id as int);
                Get.toNamed(Routes.productDetailsView);
              },
              child: Stack(
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
                    child: Image.network(
                      // isSearch ?
                            controller.homeDataModel!.products![index].image
                              as String,
                          // : controller.searchDataModel!.dataDetails![index]
                          //     .image as String,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                RatingBar(),
                SizedBox(
                  height: ManagerHeight.h8,
                ),
                Text(
                  // isSearch ?
                  controller.homeDataModel!.products![index].name
                          as String,
                      // : controller.searchDataModel!.dataDetails![index].name
                      //     as String,
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
                  '\$ ${controller.homeDataModel!.products![index].price as String }',
                  style: getTextStyle(
                      fontSize: ManagerFontSize.s16,
                      height: 1.3,
                      color: ManagerColors.primaryColor,
                      weight: ManagerFontWeight.w800),
                ),
              ],
            ),
          ],
        );
      },
    );
