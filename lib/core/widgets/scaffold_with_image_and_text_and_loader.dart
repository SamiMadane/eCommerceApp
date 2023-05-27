import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_sizes.dart';
import '../resources/manager_styles.dart';

class ScaffoldWithImageAndTextAndLoader extends StatelessWidget {
  String logo;
  String firstText;
  String secondText;

  ScaffoldWithImageAndTextAndLoader({
    super.key,
    required this.logo,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.white,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: ManagerHeight.h30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    logo,
                    width: ManagerWidth.w139,
                  ),
                  SizedBox(
                    height: ManagerHeight.h40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        firstText,
                        style: getTextStyle(
                          fontSize: ManagerFontSize.s38,
                          color: ManagerColors.textPrimaryColor,
                          weight: ManagerFontWeight.w900,
                        ),
                      ),
                      Text(
                        secondText,
                        style: getTextStyle(
                          fontSize: ManagerFontSize.s38,
                          color: ManagerColors.textColorLight,
                          weight: ManagerFontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SpinKitWave(
              size: 50,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index.isEven
                        ? ManagerColors.primaryColor
                        : ManagerColors.primaryColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
