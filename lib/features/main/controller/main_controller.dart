import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/features/cart/presentation/view/cart_view.dart';
import 'package:e_commerce/features/favourite/presentation/view/favourite_view.dart';
import 'package:e_commerce/features/home/presentation/view/home_view.dart';
import 'package:e_commerce/features/profile/presentation/view/profile_view.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_sizes.dart';

class MainController extends GetxController {
  PersistentTabController persistentTabController =
      PersistentTabController(initialIndex: 0);

  final AppSettingSharedPrefernces _appSettingsSharedPreferences =
  instance<AppSettingSharedPrefernces>();


  @override
  void onInit() {
    print('sharedPref Token is ${_appSettingsSharedPreferences.getToken()}');
    super.onInit();
  }
  Color color = ManagerColors.black;
  List<Widget> screens = [
    // Container(
    //   color: Colors.red,
    // ),
    HomeView(),
    FavouriteView(),
    CartView(),
    ProfileView(),
  ];

  List<PersistentBottomNavBarItem> bottomNavBarItems = [
    PersistentBottomNavBarItem(
      icon: Icon(IconBroken.Home),
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.black,
      iconSize: ManagerRadius.r26,

    ),
    PersistentBottomNavBarItem(
      icon: Icon(IconBroken.Heart),
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.black,
      iconSize: ManagerRadius.r26,

    ),
    PersistentBottomNavBarItem(
      icon: Icon(IconBroken.Bag),
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.black,
      iconSize: ManagerRadius.r26,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(IconBroken.Profile),
      iconSize: ManagerRadius.r26,
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.black,
    ),
  ];
}
