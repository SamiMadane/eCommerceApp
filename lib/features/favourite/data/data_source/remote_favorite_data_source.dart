import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/favourite/data/request/favorite_request.dart';
import 'package:e_commerce/features/favourite/data/response/change_favorites_response.dart';

abstract class RemoteFavoriteDataSource {
  Future<ChangeFavoritesResponse> favoriteData(FavoriteRequest favoriteRequest);
}

class RemoteFavoriteDataSourceImplement extends RemoteFavoriteDataSource {
  final AppApi _appApi;

  RemoteFavoriteDataSourceImplement(this._appApi);

  @override
  Future<ChangeFavoritesResponse> favoriteData(FavoriteRequest favoriteRequest) async {
    return await _appApi.favorites(favoriteRequest.productID);
  }
}
