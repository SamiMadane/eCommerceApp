import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_details_model.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_model.dart';

class GetFavoritesDataModel extends GetFavoritesModel{
  List<GetFavoritesDataDetailsModel>? dataDetails;
  GetFavoritesDataModel(
      {this.dataDetails});
}