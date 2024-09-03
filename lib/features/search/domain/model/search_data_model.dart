import 'package:e_commerce/features/search/domain/model/search_data_details_model.dart';
import 'package:e_commerce/features/search/domain/model/search_model.dart';

class SearchDataModel extends SearchModel{
  List<SearchDataDetailsModel>? dataDetails;
  SearchDataModel(
      {this.dataDetails});
}