import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';


Widget drawerListTile({
  required String title,
  void Function()? onPressed,
  required IconData icon,
}) {
  return ListTile(
    leading: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: ManagerColors.primaryColor, borderRadius: BorderRadius.circular(20)),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
    title: TextButton(
      onPressed: onPressed.onNull(),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    ),
  );
}
