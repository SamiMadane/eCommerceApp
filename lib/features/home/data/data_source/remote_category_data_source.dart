import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/home/data/response/category_response.dart';
import 'package:e_commerce/features/home/data/response/home_response.dart';

abstract class RemoteCategoryDataSource {
  Future<CategoryResponse> categoryData();
}

class RemoteCategoryDataSourceImplement extends RemoteCategoryDataSource {
  final AppApi _appApi;

  RemoteCategoryDataSourceImplement(this._appApi);

  @override
  Future<CategoryResponse> categoryData() async {
    return await _appApi.categories();
  }
}