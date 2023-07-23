import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:e_commerce/features/profile/presentation/controller/profile_controller.dart';
import 'package:e_commerce/features/profile/presentation/widget/build_switch_list_tile.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileView extends StatefulWidget {
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool notification = false;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      onWillPop: () => Future(() {
        return false;
      }),
      child: GetBuilder<ProfileController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(IconBroken.Arrow___Left_2),
                onPressed: () {
                  Get.offAllNamed(Routes.mainView);
                },
              ),
              title: Text(
                'My Account',
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s22,
                  color: ManagerColors.black,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: ClipOval(
                              child: Image.asset(
                                ManagerAssets.profile,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          height: ManagerHeight.h16,
                        ),
                        Text(
                          controller.profileDataModel!.name,
                          style: getBoldTextStyle(
                            fontSize: ManagerFontSize.s20,
                            color: ManagerColors.black,
                          ),
                        ),
                        SizedBox(
                          height: ManagerHeight.h6,
                        ),
                        Text(
                          controller.profileDataModel!.email,
                          style: getMediumTextStyle(
                            fontSize: ManagerFontSize.s18,
                            color: ManagerColors.textgreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h30,
                  ),
                  Expanded(
                      child: ListView(
                        children: [
                          buildSwitchListTile(
                            'Notification',
                            notification,
                                (value) {
                              setState(() {
                                notification = value;
                              });
                            },
                          ),
                          Divider(color: ManagerColors.textgreyColor, thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My Orders',
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s20,
                                  color: ManagerColors.black,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(IconBroken.Arrow___Right),
                              ),
                            ],
                          ),
                          Divider(color: ManagerColors.textgreyColor, thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment Method',
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s20,
                                  color: ManagerColors.black,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(IconBroken.Arrow___Right),
                              ),
                            ],
                          ),
                          Divider(color: ManagerColors.textgreyColor, thickness: 1),
                          buildSwitchListTile(
                            'Dark Mode',
                            darkMode,
                                (value) {
                              setState(() {
                                darkMode = value;
                              });
                            },
                          ),
                          Divider(color: ManagerColors.textgreyColor, thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping Addresses',
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s20,
                                  color: ManagerColors.black,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(IconBroken.Arrow___Right),
                              ),
                            ],
                          ),
                          Divider(color: ManagerColors.textgreyColor, thickness: 1),
                          TextButton(
                            onPressed: () {
                              logOut();
                            },
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                'Logout',
                                style: getTextStyle(
                                  fontSize: ManagerFontSize.s20,
                                  color: ManagerColors.primaryColor,
                                  weight: ManagerFontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
