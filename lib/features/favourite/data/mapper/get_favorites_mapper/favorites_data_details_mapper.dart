import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_data_details_response.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_details_model.dart';
import 'favorites_product_mapper.dart';


extension GetFavoritesDataDetailsMapper on GetFavoritesDataDetailsResponse{
  GetFavoritesDataDetailsModel toDomain(){
    return GetFavoritesDataDetailsModel(
      favoritesProduct: favoritesProduct?.toDomain(),
    );
  }
}