import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_model.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_product_model.dart';

class GetFavoritesDataDetailsModel extends GetFavoritesDataModel{
  GetFavoritesProductsModel? favoritesProduct;
  GetFavoritesDataDetailsModel(
      {this.favoritesProduct});
}