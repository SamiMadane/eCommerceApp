import 'package:e_commerce/config/dependency_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../config/constant.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../../../storage/local/app_setting_shared_prefernces.dart';
import '../view/widgets/out_boarding_item.dart';

class OutBoardingController extends GetxController {
  AppSettingSharedPrefernces _appSettingSharedPrefernces =
      instance<AppSettingSharedPrefernces>();

  late PageController pageController;
  static const firstPage = 0;
  static const lastPage = 2;
  int currentPage = firstPage;

  final List pageViewItems = [
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration1,
      title: ManagerStrings.outBoardingTitle1,
      subTitle: ManagerStrings.outBoardingSubTitle1,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration2,
      title: ManagerStrings.outBoardingTitle2,
      subTitle: ManagerStrings.outBoardingSubTitle2,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration3,
      title: ManagerStrings.outBoardingTitle3,
      subTitle: ManagerStrings.outBoardingSubTitle3,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> setCurrentPage(int index) async {
    await _appSettingSharedPrefernces.setOutBoardingViewed();
    currentPage = index;
    update();
  }

  void nextPage() {
    if (currentPage < lastPage) {
      pageController.animateToPage(
        ++currentPage,
        duration: Duration(seconds: Constants.outBoardingTimeDuration),
        curve: Curves.fastLinearToSlowEaseIn,
      );
      update();
    }else{
      Get.offAllNamed(Routes.loginView);
    }
  }

  bool isLastPage() {
    return currentPage == lastPage;
  }
}
