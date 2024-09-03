import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_model.dart';


class GetFavoritesModel extends BaseModel{
  GetFavoritesDataModel? data;
  GetFavoritesModel(
      {this.data,super.message,super.status});
}