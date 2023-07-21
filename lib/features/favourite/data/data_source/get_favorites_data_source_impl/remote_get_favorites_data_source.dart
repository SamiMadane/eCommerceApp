import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_response.dart';
import 'package:e_commerce/features/home/data/response/home_response.dart';

abstract class RemoteGetFavoritesDataSource {
  Future<GetFavoritesResponse> favoriteProduct();
}

class RemoteGetFavoritesDataSourceImplement extends RemoteGetFavoritesDataSource {
  final AppApi _appApi;

  RemoteGetFavoritesDataSourceImplement(this._appApi);

  @override
  Future<GetFavoritesResponse> favoriteProduct() async {
    return await _appApi.favoriteProduct();
  }
}