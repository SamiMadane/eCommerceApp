import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_data_model.dart';
import 'package:e_commerce/features/cart/domain/use_case/carts_usecase.dart';
import 'package:e_commerce/features/cart/domain/use_case/get_carts_use_case/get_carts_use_case.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_model.dart';
import 'package:e_commerce/features/favourite/domain/use_case/favorite_usecase.dart';
import 'package:e_commerce/features/favourite/domain/use_case/get_favorites_use_case/get_favorites_use_case.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CartController extends GetxController {

  GetCartsDataModel? getCartsDataModel ;
  final GetCartsUseCase _getCartsUseCase = instance<GetCartsUseCase>();

  final CartsUseCase _cartsUseCase = instance<CartsUseCase>();

  @override
  void onInit() {
    super.onInit();
    getCarts();
  }

  Future<void> getCarts() async {
    BuildContext context = Get.context as BuildContext;
    (await _getCartsUseCase.execute()).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      getCartsDataModel = r.data;
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
      getCarts();
      update();
    });
  }





}