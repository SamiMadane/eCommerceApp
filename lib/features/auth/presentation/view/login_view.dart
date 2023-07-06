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
import 'package:e_commerce/features/auth/presentation/controller/login_controller.dart';
import 'package:e_commerce/features/auth/presentation/widgets/header_auth_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FaildValidator _failedValidator = FaildValidator();

    return Scaffold(
      body: GetBuilder<LoginController>(
        builder: (controller) {
          return Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
                child: Column(
                  children: [
                    headerAuthView(
                      mainText: ManagerStrings.welcomeBack,
                      secondaryText: ManagerStrings.loginToYourAccount,
                    ),
                    SizedBox(
                      height: ManagerHeight.h50,
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
                      height: ManagerHeight.h30,
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
                      height: ManagerHeight.h10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            customCheckbox(
                              state: controller.rememberMe,
                              onChanged: (status) {
                                controller.changeRememberMe(status!);
                              },
                            ),
                            Text(
                              ManagerStrings.rememberMe,
                              style: getMediumTextStyle(
                                fontSize: ManagerFontSize.s16,
                                color: ManagerColors.black,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            ManagerStrings.forgetPassword,
                            style: getTextStyle(
                              color: ManagerColors.primaryColor,
                              fontSize: ManagerFontSize.s16,
                              weight: ManagerFontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: ManagerHeight.h20,
                    ),
                    mainButton(
                      child: Text(
                        ManagerStrings.login,
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
                          controller.performLogin(context);
                        }
                      },
                    ),
                    SizedBox(
                      height: ManagerHeight.h30,
                    ),
                    Text(
                      ManagerStrings.or,
                      style: getTextStyle(
                        color: ManagerColors.textgreyColor,
                        fontSize: ManagerFontSize.s18,
                        weight: ManagerFontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: ManagerHeight.h30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mainButton(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                ManagerAssets.google,
                                width: ManagerIconSize.s25,
                                height: ManagerIconSize.s25,
                              ),
                              Text(
                                ManagerStrings.google,
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s16,
                                  color: ManagerColors.black,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                          color: ManagerColors.white,
                          shapeBorder: Border.all(
                            color: ManagerColors.secondaryButtonColor,
                          ),
                          minWidth: ManagerWidth.w170,
                          height: ManagerHeight.h55,
                        ),
                        mainButton(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                ManagerAssets.facebook,
                                width: ManagerIconSize.s30,
                                height: ManagerIconSize.s30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                ManagerStrings.facebook,
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s16,
                                  color: ManagerColors.black,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                          color: ManagerColors.white,
                          shapeBorder: Border.all(
                            color: ManagerColors.secondaryButtonColor,
                          ),
                          minWidth: ManagerWidth.w170,
                          height: ManagerHeight.h55,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ManagerHeight.h30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ManagerStrings.dontHaveAnAccount,
                          textAlign: TextAlign.center,
                          style: getMediumTextStyle(
                            color: ManagerColors.textgreyColor,
                            fontSize: ManagerFontSize.s18,
                            letterSpacing: -0.18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.registerView);
                          },
                          child: Text(
                            ManagerStrings.signUp,
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
            ),
          );
        },
      ),
    );
  }
}
