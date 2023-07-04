import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/core/network/dio_factory.dart';
import 'package:e_commerce/features/auth/data/data_source/reomte_login_data_source.dart';
import 'package:e_commerce/features/auth/data/data_source/reomte_register_data_source.dart';
import 'package:e_commerce/features/auth/data/repository_impl/login_repository_impl.dart';
import 'package:e_commerce/features/auth/data/repository_impl/register_repository_impl.dart';
import 'package:e_commerce/features/auth/domain/repository/login_repository.dart';
import 'package:e_commerce/features/auth/domain/repository/regsiter_repository.dart';
import 'package:e_commerce/features/auth/domain/use_case/login_use_case.dart';
import 'package:e_commerce/features/auth/domain/use_case/register_use-case.dart';
import 'package:e_commerce/features/auth/presentation/controller/forget_password_controller.dart';
import 'package:e_commerce/features/auth/presentation/controller/login_controller.dart';
import 'package:e_commerce/features/auth/presentation/controller/register_controller.dart';
import 'package:e_commerce/features/auth/presentation/controller/reset_password_controller.dart';
import 'package:e_commerce/features/home/presentation/controller/home_controller.dart';
import 'package:e_commerce/features/main/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../features/out_boarding/presentation/controller/out_boarding_controller.dart';
import '../features/splach/presentation/controller/splach_controller.dart';
import '../storage/local/app_setting_shared_prefernces.dart';
import 'package:dio/dio.dart';

final instance = GetIt.instance;

initSplach() {
  Get.put<SplachController>(SplachController());
}

disposeSplach() {
  Get.delete<SplachController>();
}

initOutBoarding() {
  disposeSplach();
  Get.put<OutBoardingController>(OutBoardingController());
}

disposeOutBoarding() {
  Get.delete<OutBoardingController>();
}

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  instance.registerLazySingleton<AppSettingSharedPrefernces>(
      () => AppSettingSharedPrefernces(instance()));

  // TODO: ONLY FOR TEST
  // AppSettingSharedPrefernces _appSettingSharedPrefernces =
  //     instance<AppSettingSharedPrefernces>();
  // _appSettingSharedPrefernces.clear();

  instance.registerLazySingleton(() => DioFactory());

  Dio dio = await instance<DioFactory>().getDio();

  instance.registerLazySingleton<AppApi>(() => AppApi(dio));

  instance.registerLazySingleton<NetworkInfo>(
          () => NetworkInfoImpl(InternetConnectionCheckerPlus()));

}


initLoginModule() {
  disposeSplach();
  disposeOutBoarding();
  disposeRegisterModule();
  if (!GetIt.I.isRegistered<RemoteLoginDataSource>()) {
    instance.registerLazySingleton<RemoteLoginDataSource>(
          () => RemoteLoginDataSourceImplement(instance<AppApi>()),
    );
  }

  if (!GetIt.I.isRegistered<LoginRepository>()) {
    instance.registerLazySingleton<LoginRepository>(
            () => LoginRepositoryImpl(instance(), instance<NetworkInfo>())
    );
  }

  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(
            () => LoginUseCase(instance<LoginRepository>()));
  }
  Get.put<LoginController>(LoginController());
}

disposeLoginModule() {
  if (GetIt.I.isRegistered<RemoteLoginDataSource>()) {
    instance.unregister<RemoteLoginDataSource>();
  }

  if (GetIt.I.isRegistered<LoginRepository>()) {
    instance.unregister<LoginRepository>();
  }

  if (GetIt.I.isRegistered<LoginUseCase>()) {
    instance.unregister<LoginUseCase>();
  }
  Get.delete<LoginController>();
}

initRegisterModule() {
  disposeLoginModule();
  if (!GetIt.I.isRegistered<RemoteRegisterDataSource>()) {
    instance.registerLazySingleton<RemoteRegisterDataSource>(
          () => RemoteRegisterDataSourceImplement(instance<AppApi>()),
    );
  }

  if (!GetIt.I.isRegistered<RegisterRepository>()) {
    instance.registerLazySingleton<RegisterRepository>(
            () => RegisterRepositoryImpl(instance(), instance())
    );
  }

  if (!GetIt.I.isRegistered<RegisterUseCase>()) {
    instance.registerFactory<RegisterUseCase>(
            () => RegisterUseCase(instance()));
  }
  Get.put<RegisterController>(RegisterController());
}

disposeRegisterModule() {
  if (GetIt.I.isRegistered<RemoteRegisterDataSource>()) {
    instance.unregister<RemoteRegisterDataSource>();
  }

  if (GetIt.I.isRegistered<RegisterRepository>()) {
    instance.unregister<RegisterRepository>();
  }

  if (GetIt.I.isRegistered<RegisterUseCase>()) {
    instance.unregister<RegisterUseCase>();
  }
  Get.delete<RegisterController>();
}

initMainModule() {
  initHomeModule();
  Get.put<MainController>(MainController());
}

initHomeModule() {
  Get.put<HomeController>(HomeController());
}


initForgetPassword() async {
  disposeLoginModule();
  Get.put<ForgetPasswordController>(ForgetPasswordController());
}

disposeForgetPassword() async {

}

initResetPasswordModule() {
  Get.put<ResetPasswordController>(ResetPasswordController());
}

disposeResetPasswordModule() {
  disposeForgetPassword();
  Get.delete<ResetPasswordController>();
}