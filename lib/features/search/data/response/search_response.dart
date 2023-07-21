import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/search/data/response/search_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';


@JsonSerializable()
class SearchResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.data)
  SearchDataResponse? data;



  SearchResponse({this.data});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SearchResponseToJson(this);
}