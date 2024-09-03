import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/home/data/response/category_data_details_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_data_response.g.dart';


@JsonSerializable()
class CategoryDataResponse {

  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'data')
  List<CategoryDataDetailsResponse>? dataDetails = [];


  CategoryDataResponse({this.currentPage, this.dataDetails});

  factory CategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CategoryDataResponseToJson(this);
}