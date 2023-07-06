import 'package:e_commerce/features/auth/presentation/view/forget_password_view.dart';
import 'package:e_commerce/features/auth/presentation/view/login_view.dart';
import 'package:e_commerce/features/auth/presentation/view/register_view.dart';
import 'package:e_commerce/features/auth/presentation/view/reset_password_view.dart';
import 'package:e_commerce/features/home/presentation/view/home_view.dart';
import 'package:e_commerce/features/home/presentation/view/product_details_view.dart';
import 'package:e_commerce/features/main/view/main_view.dart';
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
  static const String registerView = '/register_view';
  static const String forgetPasswordView = '/forget_view';
  static const String resetPasswordView = '/reset_view';
  static const String homeView = '/home_view';
  static const String mainView = '/main_view';
  static const String productDetailsView = '/product_details_view';
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
        initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        initRegisterModule();
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.mainView:
        initMainModule();
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.homeView:
        initHomeModule();
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.productDetailsView:
        initHomeModule();
        return MaterialPageRoute(builder: (_) => ProductDetailsView());
      case Routes.forgetPasswordView:
        initForgetPassword();
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.resetPasswordView:
        initResetPasswordModule();
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
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
