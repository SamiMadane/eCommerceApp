import 'package:e_commerce/features/search/data/response/search_response.dart';
import 'package:e_commerce/features/search/domain/model/search_model.dart';
import 'search_data_mapper.dart';
extension SearchMapper on SearchResponse{
  SearchModel toDomain(){
    return SearchModel(
      data: data?.toDomain(),
    );
  }
}
