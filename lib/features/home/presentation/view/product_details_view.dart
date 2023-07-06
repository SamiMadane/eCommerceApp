import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/widgets/main_button.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:e_commerce/features/home/presentation/widget/prodect_coloers.dart';
import 'package:e_commerce/features/home/presentation/widget/rating_bar.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_styles.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      back: true,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(IconBroken.Heart),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/watch.png")),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Smart Watches",
                          style: getTextStyle(
                            color: ManagerColors.black,
                            fontSize: ManagerFontSize.s24,
                            weight: ManagerFontWeight.w600,
                          ),
                        ),
                        Text(
                          "\$118.00",
                          style: getBoldTextStyle(
                            color: Colors.red,
                            fontSize: ManagerFontSize.s24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ManagerHeight.h10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar(),
                        Text(
                          "Available in stock",
                          style: getTextStyle(
                            color: Colors.green,
                            fontSize: ManagerFontSize.s18,
                            weight: ManagerFontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                Divider(color: ManagerColors.textgreyColor, thickness: 1),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                Text(
                  "Color Variant",
                  style: getTextStyle(
                    color: ManagerColors.black,
                    fontSize: ManagerFontSize.s24,
                    weight: ManagerFontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                ProductColors(
                  colors: [
                    Colors.red,
                    Colors.blue,
                    Colors.green,
                    Colors.yellow,
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h40,
                ),
                Divider(color: ManagerColors.textgreyColor, thickness: 1),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brand : ",
                      style: getTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                    Text(
                      "Noise",
                      style: getTextStyle(
                        color: ManagerColors.textgreyColor,
                        fontSize: ManagerFontSize.s24,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Model Name :",
                      style: getTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                    Text(
                      "ColorFit Pulse 2",
                      style: getTextStyle(
                        color: ManagerColors.textgreyColor,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Colour :",
                      style: getTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                    Text(
                      "Air Superiority Blue",
                      style: getTextStyle(
                        color: ManagerColors.textgreyColor,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Style :",
                      style: getTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                    Text(
                      "Modern",
                      style: getTextStyle(
                        color: ManagerColors.textgreyColor,
                        fontSize: ManagerFontSize.s20,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                mainButton(
                    child: Text(
                      "Add To Cart",
                      style: getBoldTextStyle(
                          fontSize: ManagerFontSize.s20, color: ManagerColors.white),
                    ),
                    color: ManagerColors.primaryColor,
                    height: ManagerHeight.h50,
                    minWidth: double.infinity)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
