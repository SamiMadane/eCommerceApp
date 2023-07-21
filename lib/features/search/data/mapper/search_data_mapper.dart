import 'package:e_commerce/features/search/data/response/search_data_response.dart';
import 'package:e_commerce/features/search/domain/model/search_data_model.dart';
import 'favorites_data_details_mapper.dart';


extension SearchDataMapper on SearchDataResponse{
  SearchDataModel toDomain(){
    return SearchDataModel(
      dataDetails: dataDetails?.map((e) => e.toDomain()).toList(),
    );
  }
}