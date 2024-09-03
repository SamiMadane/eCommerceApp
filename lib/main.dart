import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config/constant.dart';
import 'core/service/theme_service.dart';

void main() async{
  await initModule();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeService _themeService;
  MyApp({super.key}) : _themeService = ThemeService();



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        // الاحجام الرئيسية
        designSize: const Size(Constants.deviceWidth,Constants.deviceHeight),
        builder: (context , child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashView,
            theme: _themeService.getThemeData(),
            themeMode: _themeService.getThemeMode(),
          );
        }
    );
  }
}
