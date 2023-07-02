
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/core/widgets/dialog_button.dart';
import 'package:e_commerce/features/auth/domain/use_case/login_use_case.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class LoginController extends GetxController {
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  late final LoginUseCase _loginUseCase = instance<LoginUseCase>();
  var formKey = GlobalKey<FormState>();
  final AppSettingSharedPrefernces _appSettingsSharedPreferences =
  instance<AppSettingSharedPrefernces>();
  bool rememberMe = false;

  changeRememberMe(bool status) {
    rememberMe = status;
    update();
  }

  void performLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      _login(context);
    }
  }

  Future<void> _login(BuildContext context) async {
    dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpLoadingState,
        message: ManagerStrings.loading,
        title: '',
        retryAction: () {});
    (await _loginUseCase.execute(
      LoginBaseUseCaseInput(email: email.text, password: password.text),
    ))
        .fold((l) {
      Get.back();
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: '',
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w65,
          ),
          child: dialogButton(
              message: ManagerStrings.ok,
              onPressed: () {
                Get.back();
              }),
        ),
        retryAction: () {},
      );
    }, (r) {
      if (rememberMe) {
        _appSettingsSharedPreferences.setEmail(email.text);
        _appSettingsSharedPreferences.setPassword(password.text);
        _appSettingsSharedPreferences.setLoggedIn();
      }
      _appSettingsSharedPreferences.setToken(r.token.onNull());
      Get.back();
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpSuccessState,
        message: ManagerStrings.thanks,
        title: '',
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w65,
          ),
          child: dialogButton(
            onPressed: () {
              Get.back();
              Get.offAllNamed(Routes.mainView);
            },
            message: ManagerStrings.thanks,
          ),
        ),
        retryAction: () {},
      );
      Future.delayed(
          Duration(
            seconds: Constants.loginTimer,
          ), () {
        Get.offAllNamed(Routes.mainView);
      });
    });
  }
}
