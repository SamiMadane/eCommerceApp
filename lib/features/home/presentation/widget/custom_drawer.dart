import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/widgets/swip_wide_text.dart';
import 'package:e_commerce/features/home/presentation/widget/drawer_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Drawer CustomDrawer() {
  return Drawer(
    backgroundColor: Colors.lightBlueAccent,
    child: Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: ManagerHeight.h100,
                ),
                Container(
                  width: ManagerWidth.w89,
                  height: ManagerHeight.h99,
                  child: SvgPicture.asset(
                    ManagerAssets.logo,
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                SwipWide(size: ManagerFontSize.s28),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
                  child: Divider(
                    height: ManagerHeight.h2,
                    thickness: ManagerHeight.h2,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          drawerListTile(
              icon: Icons.card_giftcard, title: 'Rewards', onPressed: () {}),
          drawerListTile(
              icon: Icons.help_outline_sharp, title: 'Help', onPressed: () {}),
          drawerListTile(
              icon: Icons.message, title: 'Contact Us', onPressed: () {}),
          drawerListTile(
              icon: Icons.privacy_tip_outlined,
              title: 'Privacy Policy',
              onPressed: () {}),
          drawerListTile(
              icon: Icons.logout_outlined,
              title: 'Logout',
              onPressed: () {
                logOut();
              }),
        ],
      ),
    ),
  );
}
