import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_data_response.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_model.dart';
import 'favorites_data_details_mapper.dart';


extension GetFavoritesDataMapper on GetFavoritesDataResponse{
  GetFavoritesDataModel toDomain(){
    return GetFavoritesDataModel(
      dataDetails: dataDetails?.map((e) => e.toDomain()).toList(),
    );
  }
}