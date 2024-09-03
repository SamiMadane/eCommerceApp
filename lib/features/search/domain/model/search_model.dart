import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/search/domain/model/search_data_model.dart';


class SearchModel extends BaseModel{
  SearchDataModel? data;
  SearchModel(
      {this.data,super.message,super.status});
}