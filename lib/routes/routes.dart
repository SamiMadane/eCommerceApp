import 'package:e_commerce/features/auth/presentation/view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/dependency_injection.dart';
import '../core/resources/manager_strings.dart';
import '../features/out_boarding/presentation/view/out_boarding_view.dart';
import '../features/splach/presentation/view/splach_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String outBoardingView = '/out_boarding_view';
  static const String loginView = '/login_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplach();
        return MaterialPageRoute(builder: (_) => const SplachView());
      case Routes.outBoardingView:
        initOutBoarding();
        return MaterialPageRoute(builder: (_) => const OutBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(ManagerStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(ManagerStrings.noRouteFound),
        ),
      ),
    );
  }
}