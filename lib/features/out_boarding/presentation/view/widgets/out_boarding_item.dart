import 'package:e_commerce/features/out_boarding/presentation/controller/out_boarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_fonts.dart';
import '../../../../../core/resources/manager_sizes.dart';
import '../../../../../core/resources/manager_styles.dart';
import '../../../../../core/widgets/smooth_page_indicator.dart';

class OutBoardingItem extends StatelessWidget {
  String image;
  String title;
  String subTitle;

  OutBoardingItem(
      {required this.image, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(
      builder: (controller) {
        return Column(
          children: [
            SizedBox(
              height: ManagerHeight.h60,
            ),
            SvgPicture.asset(
              image,
              width: double.infinity,
              height: ManagerHeight.h344,
            ),
            SizedBox(
              height: ManagerHeight.h60,
            ),
            Text(
              title,
              style: getBoldTextStyle(
                fontSize: ManagerFontSize.s26,
                color: ManagerColors.textColorLight,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Text(
              subTitle,
              style: getMediumTextStyle(
                fontSize: ManagerFontSize.s18,
                color: ManagerColors.textgreyColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ManagerHeight.h150),
            buildSmoothPageIndicator(controller: controller.pageController),
          ],
        );
      }
    );
  }

}
