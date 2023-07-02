
import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/core/widgets/dialog_button.dart';
import 'package:e_commerce/features/auth/domain/use_case/register_use-case.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class RegisterController extends GetxController {
  late TextEditingController name = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController phoneNumber = TextEditingController();
  late TextEditingController password = TextEditingController();
  late TextEditingController confirmPassword = TextEditingController();

  var formKey = GlobalKey<FormState>();
  final RegisterUseCase _registerUseCase = instance<RegisterUseCase>();
  bool isAgreementPolicy = false;

  changePolicyStatus(bool status) {
    isAgreementPolicy = status;
    update();
  }

  void performRegister(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (isAgreementPolicy) {
        _register(context);
      } else {
        dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: ManagerStrings.shouldAgreePolicies,
          title: ManagerStrings.error,
          child: dialogButton(
            message: ManagerStrings.ok,
            onPressed: () {
              Get.back();
            },
          ), retryAction: (){},
        );
      }
    }
  }

  Future<void> _register(BuildContext context) async {
    dialogRender(
      context: context,
      stateRenderType: StateRenderType.popUpLoadingState,
      message: ManagerStrings.loading,
      title: '', retryAction: (){},
    );
    (await _registerUseCase.execute(
      RegisterUseCaseInput(
        name: name.text,
        email: email.text,
        phone: phoneNumber.text,
        password: password.text,
      ),
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
        ), retryAction: (){},
      );
    }, (r) {
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
              // Get.offAllNamed(Routes.homeView);
            },
            message: ManagerStrings.thanks,
          ),
        ), retryAction: (){},
      );
    });
  }
}

