import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../features/out_boarding/presentation/controller/out_boarding_controller.dart';
import '../features/splach/presentation/controller/splach_controller.dart';
import '../storage/local/app_setting_shared_prefernces.dart';

final instance = GetIt.instance;

initSplach() {
  Get.put<SplachController>(SplachController());
}

disposeSplach() {
  Get.delete<SplachController>();
}

initOutBoarding() {
  disposeSplach();
  Get.put<OutBoardingController>(OutBoardingController());
}

disposeOutBoarding() {
  Get.delete<OutBoardingController>();
}

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  instance.registerLazySingleton<AppSettingSharedPrefernces>(
      () => AppSettingSharedPrefernces(instance()));

  // TODO: ONLY FOR TEST
  // AppSettingSharedPrefernces _appSettingSharedPrefernces =
  //     instance<AppSettingSharedPrefernces>();
  // _appSettingSharedPrefernces.clear();
}
