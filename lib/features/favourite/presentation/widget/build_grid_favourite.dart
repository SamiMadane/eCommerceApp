import 'package:e_commerce/core/cache/cache.dart';
import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/features/favourite/presentation/controller/favorite_controller.dart';
import 'package:e_commerce/features/home/presentation/controller/home_controller.dart';
import 'package:e_commerce/features/home/presentation/widget/rating_bar.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

Widget buildGridFavourite({context, index}) => GetBuilder<FavoriteController>(
      builder: (controller) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                InkWell(
                  onTap: (){
                    CacheData cacheData = CacheData();
                    cacheData.setID(controller.getFavoritesDataModel?.dataDetails?[index].favoritesProduct?.id as int);
                    Get.toNamed(Routes.productDetailsView);
                    print('samiiiiiiiiiiiiiiii');
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
                          controller.getFavoritesDataModel?.dataDetails?[index].favoritesProduct?.image
                              as String,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: ManagerColors.backGroundImage,
                  radius: 20,
                  child: Container(
                    alignment: AlignmentDirectional.topEnd,
                    child: IconButton(
                      onPressed: () {
                        controller.favorite(controller.getFavoritesDataModel!.dataDetails![index].favoritesProduct?.id);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color:  ManagerColors.primaryColor ,
                      ),
                    ),
                  ),
                )
              ],
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
                  controller.getFavoritesDataModel?.dataDetails?[index].favoritesProduct?.name as String,
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
                  '\$ ${controller.getFavoritesDataModel?.dataDetails?[index].favoritesProduct?.price.round().toString() as String}',
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
