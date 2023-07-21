import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/state_renderer/state_renderer.dart';
import 'package:e_commerce/features/favourite/domain/use_case/favorite_usecase.dart';
import 'package:e_commerce/features/home/domain/model/category_data_model.dart';
import 'package:e_commerce/features/home/domain/model/home_data_model.dart';
import 'package:e_commerce/features/home/domain/use_case/category_usecase.dart';
import 'package:e_commerce/features/home/domain/use_case/home_usecase.dart';
import 'package:e_commerce/features/search/domain/model/search_data_model.dart';
import 'package:e_commerce/features/search/domain/use_case/get_search_use_case.dart';
import 'package:e_commerce/storage/local/app_setting_shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final AppSettingSharedPrefernces _appSettingsSharedPreferences =
  instance<AppSettingSharedPrefernces>();

  late TextEditingController search = TextEditingController();
  HomeDataModel? homeDataModel ;
  CategoryDataModel? categoryDataModel ;
  SearchDataModel? searchDataModel ;
  final HomeUseCase _homeUseCase = instance<HomeUseCase>();
  final CategoryUseCase _categoryUseCase = instance<CategoryUseCase>();
  final SearchUseCase _searchUseCase = instance<SearchUseCase>();

  Map<int,bool> favorites = {};

  @override
  void onInit() {
    super.onInit();
    home();
    category();
  }


  Future<void> home() async {
    BuildContext context = Get.context as BuildContext;
    (await _homeUseCase.execute()).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      homeDataModel = r.data;
      homeDataModel?.products?.forEach((element) {
        favorites.addAll({
          element.id : element.in_favorites,
        });
      });
      print(_appSettingsSharedPreferences.getToken());
      print('favorite :  ${favorites.toString()}');
      print('favorite id :  ${favorites[55]}');
      update();
    });
  }

  Future<void> category() async {
    BuildContext context = Get.context as BuildContext;
    (await _categoryUseCase.execute()).fold((l) {
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      categoryDataModel = r.categoryDataModel;
      print('printttttttt${r.categoryDataModel?.categoryDataDetailsModel?.length}');
      update();
    });
  }


  Future<void> searchProduct(String text) async {
    BuildContext context = Get.context as BuildContext;
    (await _searchUseCase.execute(SearchUseCaseInput(text: text.toString()))).fold((l) {
      print("object search error");
      dialogRender(
          context: context,
          stateRenderType: StateRenderType.popUpErrorState,
          message: l.message,
          title: '',
          retryAction: () {
            Get.back();
          });
    }, (r) {
      searchDataModel = r.data;
      print("object search sucsess");
      update();
    });
  }
  bool press = false;
  void submit(){
    press = true;
  }
  bool isSearch (){
    print('press is $press');
    if(press == true){
      return true;
    }
    return false;

  }



}