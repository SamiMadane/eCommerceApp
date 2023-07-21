import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_model.dart';
import 'package:e_commerce/features/favourite/domain/use_case/favorite_usecase.dart';
import 'package:e_commerce/features/favourite/domain/use_case/get_favorites_use_case/get_favorites_use_case.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FavoriteController extends GetxController {

  GetFavoritesDataModel? getFavoritesDataModel ;
  final GetFavoritesUseCase _getFavoritesUseCase = instance<GetFavoritesUseCase>();

  final FavoriteUseCase _favoriteUseCase = instance<FavoriteUseCase>();

  @override
  void onInit() {
    super.onInit();
    getFavorites();
  }

  Future<void> getFavorites() async {
    BuildContext context = Get.context as BuildContext;
    (await _getFavoritesUseCase.execute()).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      getFavoritesDataModel = r.data;

      print('length of favorite  ${getFavoritesDataModel?.dataDetails?.length}');
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
      getFavorites();
      update();
    });
  }





}