import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/main_button.dart';
import 'package:e_commerce/features/cart/presentation/controller/cart_controller.dart';
import 'package:e_commerce/features/home/presentation/widget/rating_bar.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

Widget buildCartItem({context, bool favScreen = false,index}) =>
    GetBuilder<CartController>(builder: (controller) {
      return Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
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
              favScreen
                  ? Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: IconButton(
                        onPressed: () {
                          controller.carts(controller.getCartsDataModel!.cartsItem![index].cartsProduct!.id);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: ManagerColors.primaryColor,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            width: ManagerWidth.w20,
          ),
          Expanded(
            child: Column(
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
                  controller.getCartsDataModel!.cartsItem![index].cartsProduct!.name,
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
                  '\$ ${controller.getCartsDataModel!.cartsItem![index].cartsProduct!.price}',
                  style: getTextStyle(
                      fontSize: ManagerFontSize.s16,
                      height: 1.3,
                      color: ManagerColors.primaryColor,
                      weight: ManagerFontWeight.w800),
                ),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                Row(
                  children: [
                    mainButton(
                      child: Icon(
                        Icons.minimize,
                        color: ManagerColors.black,
                        size: ManagerIconSize.s20,
                      ),
                      color: ManagerColors.textgreyColor,
                      height: ManagerHeight.h10,
                      minWidth: ManagerWidth.w10,
                    ),
                    SizedBox(
                      width: ManagerWidth.w10,
                    ),
                    Text(
                      '1',
                      style: getBoldTextStyle(
                        fontSize: ManagerFontSize.s18,
                        color: ManagerColors.black,
                      ),
                    ),
                    SizedBox(
                      width: ManagerWidth.w10,
                    ),
                    mainButton(
                      child: Icon(
                        Icons.add,
                        color: ManagerColors.white,
                        size: ManagerIconSize.s20,
                      ),
                      color: ManagerColors.primaryColor,
                      height: ManagerHeight.h10,
                      minWidth: ManagerWidth.w10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    });
