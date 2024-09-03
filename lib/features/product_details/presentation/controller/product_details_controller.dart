import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/cache/cache.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/features/cart/domain/use_case/carts_usecase.dart';
import 'package:e_commerce/features/favourite/domain/use_case/favorite_usecase.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_data_model.dart';
import 'package:e_commerce/features/product_details/domain/use_case/product_details_usecase.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductDetailsController extends GetxController {
  final AppSettingSharedPrefernces _appSettingsSharedPreferences =
  instance<AppSettingSharedPrefernces>();

  ProductDetailsDataModel? productDetailsDataModel;

  final ProductDetailsUseCase _productDetailsUseCase = instance<ProductDetailsUseCase>();
  final FavoriteUseCase _favoriteUseCase = instance<FavoriteUseCase>();
  final CartsUseCase _cartsUseCase = instance<CartsUseCase>();


  CacheData cacheData = CacheData();

  late bool isLoading;

  @override
  void onInit() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 8), () {
      isLoading = false;
      update();
    });
    super.onInit();
    productDetails();
  }

  Future<void> productDetails() async {
    BuildContext context = Get.context as BuildContext;
    (await _productDetailsUseCase.execute(
        ProductDetailsUseCaseInput(productID: cacheData.getID()))).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      productDetailsDataModel = r.data;
      update();
    });
  }

  Future<void> favorite(productID) async {
    BuildContext context = Get.context as BuildContext;
    (await _favoriteUseCase.execute(
        FavoriteUseCaseInput(productID: productID)
    )).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      productDetails();
      update();
    });
  }

  Future<void> carts(productID) async {
    BuildContext context = Get.context as BuildContext;
    (await _cartsUseCase.execute(
        CartsUseCaseInput(productID: productID)
    )).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      productDetails();
      update();
    });
  }
}