import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/search/data/response/search_data_details_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_data_response.g.dart';


@JsonSerializable()
class SearchDataResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.data)
  List<SearchDataDetailsResponse>? dataDetails;



  SearchDataResponse({this.dataDetails});

  factory SearchDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchDataResponseToJson(this);
}