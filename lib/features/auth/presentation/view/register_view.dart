import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/validator/validator.dart';
import 'package:e_commerce/core/widgets/base_text_form_field.dart';
import 'package:e_commerce/core/widgets/custom_check_box.dart';
import 'package:e_commerce/core/widgets/main_button.dart';
import 'package:e_commerce/features/auth/presentation/controller/register_controller.dart';
import 'package:e_commerce/features/auth/presentation/widgets/header_auth_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  final FaildValidator _failedValidator = FaildValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RegisterController>(
        builder: (controller) {
          return Form(
            key: controller.formKey,
            child: Container(
              color: ManagerColors.white,
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: Column(
                children: [
                  headerAuthView(
                    mainText: ManagerStrings.register,
                    secondaryText: ManagerStrings.createNewAccount,
                  ),
                  SizedBox(
                    height: ManagerHeight.h45,
                  ),
                  baseTextFormField(
                    hintText: ManagerStrings.fullName,
                    keyboardType: TextInputType.text,
                    controller: controller.name,
                    validator: (value) => _failedValidator.validateFullName(
                      value,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h25,
                  ),
                  baseTextFormField(
                    hintText: ManagerStrings.emailAddress,
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.email,
                    validator: (value) => _failedValidator.validateEmail(
                      value,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h25,
                  ),
                  baseTextFormField(
                    hintText: ManagerStrings.phoneNumber,
                    keyboardType: TextInputType.text,
                    controller: controller.phoneNumber,
                    obscureText: true,
                    validator: (value) => _failedValidator.validatePhone(
                      value,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h25,
                  ),
                  baseTextFormField(
                    hintText: ManagerStrings.password,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                    obscureText: true,
                    validator: (value) => _failedValidator.validatePassword(
                      value,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customCheckbox(
                        state: controller.isAgreementPolicy,
                        onChanged: (status) {
                          controller.changePolicyStatus(status!);
                        },
                      ),
                      Container(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ManagerStrings.bySigning,
                                style: getMediumTextStyle(
                                  color: ManagerColors.black,
                                  fontSize: ManagerFontSize.s16,
                                ),
                              ),
                              TextSpan(
                                text: ManagerStrings.teamOfUse,
                                style: getTextStyle(
                                  color: ManagerColors.primaryColor,
                                  fontSize: ManagerFontSize.s16,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: ManagerStrings.and,
                                style: getMediumTextStyle(
                                  color: ManagerColors.black,
                                  fontSize: ManagerFontSize.s16,
                                ),
                              ),
                              TextSpan(
                                text: ManagerStrings.privacyNotice,
                                style: getTextStyle(
                                  color: ManagerColors.primaryColor,
                                  fontSize: ManagerFontSize.s16,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ManagerHeight.h25,
                  ),
                  mainButton(
                    child: Text(
                      ManagerStrings.signUp,
                      style: getBoldTextStyle(
                        fontSize: ManagerFontSize.s18,
                        color: ManagerColors.white,
                      ),
                    ),
                    color: ManagerColors.primaryColor,
                    minWidth: double.infinity,
                    height: ManagerHeight.h55,
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        controller.performRegister(context);
                      }
                    },
                  ),
                  SizedBox(
                    height: ManagerHeight.h20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ManagerStrings.alreadyHaveAnAccount,
                        textAlign: TextAlign.center,
                        style: getMediumTextStyle(
                          color: ManagerColors.textgreyColor,
                          fontSize: ManagerFontSize.s18,
                          letterSpacing: -0.18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.loginView);
                        },
                        child: Text(
                          ManagerStrings.login,
                          textAlign: TextAlign.center,
                          style: getTextStyle(
                            color: ManagerColors.primaryColor,
                            fontSize: ManagerFontSize.s18,
                            weight: FontWeight.w600,
                            letterSpacing: -0.18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
