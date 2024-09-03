import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_strings.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/base_text_form_field.dart';
import 'package:e_commerce/core/widgets/main_button.dart';
import 'package:e_commerce/features/auth/presentation/controller/reset_password_controller.dart';
import 'package:e_commerce/features/auth/presentation/widgets/header_auth_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ResetPasswordController>(
        builder: (controller) {
          return Container(
            color: ManagerColors.white,
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            child: Column(
              children: [
                headerAuthView(
                  mainText: ManagerStrings.reset,
                  secondaryText: ManagerStrings.resetYourPassword,
                ),
                SizedBox(
                  height: ManagerHeight.h92,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    ManagerStrings.enterYourNewPassword,
                    style: getTextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSize.s18,
                      weight: ManagerFontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h35,
                ),
                baseTextFormField(
                  hintText: ManagerStrings.newPassword,
                  keyboardType: TextInputType.text,
                  controller: controller.newPassword,
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                baseTextFormField(
                  hintText: ManagerStrings.confirmPassword,
                  keyboardType: TextInputType.text,
                  controller: controller.confirmPassword,
                ),

                SizedBox(
                  height: ManagerHeight.h165,
                ),
                mainButton(
                  child: Text(
                    ManagerStrings.changePassword,
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
