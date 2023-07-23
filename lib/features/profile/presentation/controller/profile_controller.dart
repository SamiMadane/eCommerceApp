import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/features/profile/domain/model/profile_data_model.dart';
import 'package:e_commerce/features/profile/domain/use_case/profile_usecase.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController {

  final AppSettingSharedPrefernces _appSettingsSharedPreferences =
  instance<AppSettingSharedPrefernces>();
  ProfileDataModel? profileDataModel ;
  final ProfileUseCase _profileUseCase = instance<ProfileUseCase>();


  @override
  void onInit() {
    super.onInit();
    profile();
  }

  Future<void> profile() async {
    BuildContext context = Get.context as BuildContext;
    (await _profileUseCase.execute()).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      profileDataModel = r.data;
      update();
    });
  }

}
