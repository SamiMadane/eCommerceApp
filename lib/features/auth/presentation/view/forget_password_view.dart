import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/base_text_form_field.dart';
import 'package:e_commerce/core/widgets/main_button.dart';
import 'package:e_commerce/features/auth/presentation/controller/forget_password_controller.dart';
import 'package:e_commerce/features/auth/presentation/widgets/header_auth_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ForgetPasswordController>(
        builder: (controller) {
          return Container(
            color: ManagerColors.white,
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            child: Column(
              children: [
                headerAuthView(
                  mainText: ManagerStrings.forget,
                  secondaryText: ManagerStrings.forgetYourPassword,
                ),
                SizedBox(
                  height: ManagerHeight.h112,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Please enter your email address below\nyou will receive a link to create a new \npassword via email',
                    style: getTextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSize.s18,
                      weight: ManagerFontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h60,
                ),
                baseTextFormField(
                  hintText: ManagerStrings.emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.email,
                ),

                SizedBox(
                  height: ManagerHeight.h165,
                ),
                mainButton(
                  child: Text(
                    ManagerStrings.continueText,
                    style: getBoldTextStyle(
                      fontSize: ManagerFontSize.s18,
                      color: ManagerColors.white,
                    ),
                  ),
                  color: ManagerColors.primaryColor,
                  minWidth: double.infinity,
                  height: ManagerHeight.h55,
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
