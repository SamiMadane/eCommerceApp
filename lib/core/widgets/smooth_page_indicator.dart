import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../config/constant.dart';
import '../resources/manager_colors.dart';

SmoothPageIndicator buildSmoothPageIndicator({
  required PageController controller,
  int countOfDots = Constants.countOfDots,
}) {
  return SmoothPageIndicator(
    controller: controller,
    count:  countOfDots,
    axisDirection: Axis.horizontal,
    effect:  WormEffect(
      spacing:  Constants.spacingBetweenDots,
      radius:  Constants.radiusOfDots,
      dotWidth:  Constants.radiusdotWidth,
      dotHeight:  Constants.radiusdotHeight,
      paintStyle:  PaintingStyle.fill,
      dotColor:  ManagerColors.dotColor,
      activeDotColor:  ManagerColors.activeDotColor,
    ),
  );
}
