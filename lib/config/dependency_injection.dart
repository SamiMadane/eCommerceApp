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
import 'package:e_commerce/features/cart/data/data_source/get_favorites_data_source_impl/remote_get_carts_data_source.dart';
import 'package:e_commerce/features/cart/data/data_source/remote_carts_data_source.dart';
import 'package:e_commerce/features/cart/data/repository_impl/carts_repository_implementation.dart';
import 'package:e_commerce/features/cart/data/repository_impl/get_carts_repository_impl/get_carts_repository_impl.dart';
import 'package:e_commerce/features/cart/domain/repository/carts_repository.dart';
import 'package:e_commerce/features/cart/domain/repository/get_carts_repository/get_carts_repository.dart';
import 'package:e_commerce/features/cart/domain/use_case/carts_usecase.dart';
import 'package:e_commerce/features/cart/domain/use_case/get_carts_use_case/get_carts_use_case.dart';
import 'package:e_commerce/features/cart/presentation/controller/cart_controller.dart';
import 'package:e_commerce/features/favourite/data/data_source/get_favorites_data_source_impl/remote_get_favorites_data_source.dart';
import 'package:e_commerce/features/favourite/data/data_source/remote_favorite_data_source.dart';
import 'package:e_commerce/features/favourite/data/repository_impl/favorite_repository_implementation.dart';
import 'package:e_commerce/features/favourite/data/repository_impl/get_favorites_repository_impl/favorites_repository_impl.dart';
import 'package:e_commerce/features/favourite/domain/repository/favorite_repository.dart';
import 'package:e_commerce/features/favourite/domain/repository/get_favorites_repository/favorites_repository.dart';
import 'package:e_commerce/features/favourite/domain/use_case/favorite_usecase.dart';
import 'package:e_commerce/features/favourite/domain/use_case/get_favorites_use_case/get_favorites_use_case.dart';
import 'package:e_commerce/features/favourite/presentation/controller/favorite_controller.dart';
import 'package:e_commerce/features/home/data/data_source/remote_category_data_source.dart';
import 'package:e_commerce/features/home/data/data_source/remote_home_data_source.dart';
import 'package:e_commerce/features/home/data/repository_impl/category_repository_implementation.dart';
import 'package:e_commerce/features/home/data/repository_impl/home_repository_implementation.dart';
import 'package:e_commerce/features/home/domain/repository/category_repository.dart';
import 'package:e_commerce/features/home/domain/repository/home_repository.dart';
import 'package:e_commerce/features/home/domain/use_case/category_usecase.dart';
import 'package:e_commerce/features/home/domain/use_case/home_usecase.dart';
import 'package:e_commerce/features/home/presentation/controller/home_controller.dart';
import 'package:e_commerce/features/main/controller/main_controller.dart';
import 'package:e_commerce/features/product_details/data/data_source/remote_product_details_data_source.dart';
import 'package:e_commerce/features/product_details/data/repository_impl/product_details_repository_implementation.dart';
import 'package:e_commerce/features/product_details/domain/repository/product_details_repository.dart';
import 'package:e_commerce/features/product_details/domain/use_case/product_details_usecase.dart';
import 'package:e_commerce/features/product_details/presentation/controller/product_details_controller.dart';
import 'package:e_commerce/features/profile/data/data_source/remote_profile_data_source.dart';
import 'package:e_commerce/features/profile/data/repository_impl/profile_repository_implementation.dart';
import 'package:e_commerce/features/profile/domain/repository/profile_repository.dart';
import 'package:e_commerce/features/profile/domain/use_case/profile_usecase.dart';
import 'package:e_commerce/features/profile/presentation/controller/profile_controller.dart';
import 'package:e_commerce/features/search/data/data_source/remote_get_search_data_source.dart';
import 'package:e_commerce/features/search/data/repository_impl/search_repository_impl.dart';
import 'package:e_commerce/features/search/domain/repository/search_repository.dart';
import 'package:e_commerce/features/search/domain/use_case/get_search_use_case.dart';
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
  initGetFavoritesModule();
  initGetCartsModule();
  initProfileModule();

  Get.put<MainController>(MainController());
}

initCategoryModule() {
  if (!GetIt.I.isRegistered<RemoteCategoryDataSource>()) {
    instance.registerLazySingleton<RemoteCategoryDataSource>(
          () => RemoteCategoryDataSourceImplement(
        instance<AppApi>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<CategoryRepository>()) {
    instance.registerLazySingleton<CategoryRepository>(
          () => CategoryRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<CategoryUseCase>()) {
    instance.registerLazySingleton<CategoryUseCase>(
          () => CategoryUseCase(
        instance(),
      ),
    );
  }

}
initHomeModule() {
  initCategoryModule();
  initFavoriteModule();
  initCartsModule();
  initSearchModule();

  if (!GetIt.I.isRegistered<RemoteHomeDataSource>()) {
    instance.registerLazySingleton<RemoteHomeDataSource>(
          () => RemoteHomeDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<HomeRepository>()) {
    instance.registerLazySingleton<HomeRepository>(
          () => HomeRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<HomeUseCase>()) {
    instance.registerLazySingleton<HomeUseCase>(
          () => HomeUseCase(
        instance(),
      ),
    );
  }

  Get.put<HomeController>(HomeController());
}
initFavoriteModule() {
  if (!GetIt.I.isRegistered<RemoteFavoriteDataSource>()) {
    instance.registerLazySingleton<RemoteFavoriteDataSource>(
          () => RemoteFavoriteDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<FavoriteRepository>()) {
    instance.registerLazySingleton<FavoriteRepository>(
          () => FavoriteRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<FavoriteUseCase>()) {
    instance.registerLazySingleton<FavoriteUseCase>(
          () => FavoriteUseCase(
        instance(),
      ),
    );
  }

}

initCartsModule() {
  if (!GetIt.I.isRegistered<RemoteCartsDataSource>()) {
    instance.registerLazySingleton<RemoteCartsDataSource>(
          () => RemoteCartsDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<CartsRepository>()) {
    instance.registerLazySingleton<CartsRepository>(
          () => CartsRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<CartsUseCase>()) {
    instance.registerLazySingleton<CartsUseCase>(
          () => CartsUseCase(
        instance(),
      ),
    );
  }

}

initSearchModule() {
  if (!GetIt.I.isRegistered<RemoteSearchDataSource>()) {
    instance.registerLazySingleton<RemoteSearchDataSource>(
          () => RemoteSearchDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<SearchRepository>()) {
    instance.registerLazySingleton<SearchRepository>(
          () => SearchRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<SearchUseCase>()) {
    instance.registerLazySingleton<SearchUseCase>(
          () => SearchUseCase(
        instance(),
      ),
    );
  }

}

initProfileModule() {
  if (!GetIt.I.isRegistered<RemoteProfileDataSource>()) {
    instance.registerLazySingleton<RemoteProfileDataSource>(
          () => RemoteProfileDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProfileRepository>()) {
    instance.registerLazySingleton<ProfileRepository>(
          () => ProfileRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProfileUseCase>()) {
    instance.registerLazySingleton<ProfileUseCase>(
          () => ProfileUseCase(
        instance(),
      ),
    );
  }
  Get.put<ProfileController>(ProfileController());

}

initProductDetailsModule() {
  if (!GetIt.I.isRegistered<RemoteProductDetailsDataSource>()) {
    instance.registerLazySingleton<RemoteProductDetailsDataSource>(
          () => RemoteProductDetailsDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProductDetailsRepository>()) {
    instance.registerLazySingleton<ProductDetailsRepository>(
          () => ProductDetailsRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProductDetailsUseCase>()) {
    instance.registerLazySingleton<ProductDetailsUseCase>(
          () => ProductDetailsUseCase(
        instance(),
      ),
    );
  }
  Get.put<ProductDetailsController>(ProductDetailsController());
}

disposeProductDetailsModule() {
  if (GetIt.I.isRegistered<RemoteProductDetailsDataSource>()) {
    instance.unregister<RemoteProductDetailsDataSource>();
  }

  if (GetIt.I.isRegistered<ProductDetailsRepository>()) {
    instance.unregister<ProductDetailsRepository>();
  }

  if (GetIt.I.isRegistered<ProductDetailsUseCase>()) {
    instance.unregister<ProductDetailsUseCase>();
  }
  Get.delete<ProductDetailsController>();
}

initGetFavoritesModule() {
  if (!GetIt.I.isRegistered<RemoteGetFavoritesDataSource>()) {
    instance.registerLazySingleton<RemoteGetFavoritesDataSource>(
          () => RemoteGetFavoritesDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetFavoritesRepository>()) {
    instance.registerLazySingleton<GetFavoritesRepository>(
          () => GetFavoritesRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetFavoritesUseCase>()) {
    instance.registerLazySingleton<GetFavoritesUseCase>(
          () => GetFavoritesUseCase(
        instance(),
      ),
    );
  }
  Get.put<FavoriteController>(FavoriteController());
}


initGetCartsModule() {
  if (!GetIt.I.isRegistered<RemoteGetCartsDataSource>()) {
    instance.registerLazySingleton<RemoteGetCartsDataSource>(
          () => RemoteGetCartsDataSourceImplement(
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetCartsRepository>()) {
    instance.registerLazySingleton<GetCartsRepository>(
          () => GetCartsRepositoryImplementation(
        instance(),
        instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetCartsUseCase>()) {
    instance.registerLazySingleton<GetCartsUseCase>(
          () => GetCartsUseCase(
        instance(),
      ),
    );
  }
  Get.put<CartController>(CartController());
}
disposeGetFavoritesModule() {
  if (GetIt.I.isRegistered<RemoteGetFavoritesDataSource>()) {
    instance.unregister<RemoteGetFavoritesDataSource>();
  }

  if (GetIt.I.isRegistered<GetFavoritesRepository>()) {
    instance.unregister<GetFavoritesRepository>();
  }

  if (GetIt.I.isRegistered<GetFavoritesUseCase>()) {
    instance.unregister<GetFavoritesUseCase>();
  }
  Get.delete<FavoriteController>();
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