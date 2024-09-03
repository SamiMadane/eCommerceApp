import 'package:get/get.dart';

import '../../../../config/constant.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../routes/routes.dart';
import '../../../../storage/local/app_setting_shared_prefernces.dart';

class SplachController extends GetxController {
  AppSettingSharedPrefernces _appSettingSharedPrefernces =
      instance<AppSettingSharedPrefernces>();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
        const Duration(
          seconds: Constants.splachDuration,
        ), () {
      if (_appSettingSharedPrefernces.getOutBoardingViewed()) {
        if (_appSettingSharedPrefernces.loggedIn()) {
          Get.offAllNamed(Routes.mainView);
        } else {
          Get.offAllNamed(Routes.loginView);
        }
      } else {
        Get.offAllNamed(
          Routes.outBoardingView,
        );
      }
    });
  }
}
