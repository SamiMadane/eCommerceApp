import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_response.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_model.dart';
import 'favorites_data_mapper.dart';

extension GetFavoritesMapper on GetFavoritesResponse{
  GetFavoritesModel toDomain(){
    return GetFavoritesModel(
      data: data?.toDomain(),
    );
  }
}