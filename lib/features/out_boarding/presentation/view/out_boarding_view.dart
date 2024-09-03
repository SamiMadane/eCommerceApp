import 'package:e_commerce/features/out_boarding/presentation/controller/out_boarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/widgets/main_button.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w20,
            vertical: ManagerHeight.h20,
          ),
          child: GetBuilder<OutBoardingController>(builder: (controller) {
            return Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: mainButton(
                      child: Text(
                        ManagerStrings.next,
                        style: getBoldTextStyle(
                          fontSize: ManagerFontSize.s18,
                          color: ManagerColors.textPrimaryColor,
                        ),
                      ),
                      onPressed: () {
                        controller.nextPage();
                      }),
                ),
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    children: [
                      ...controller.pageViewItems,
                    ],
                    onPageChanged: (index) {
                      controller.setCurrentPage(index);
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
