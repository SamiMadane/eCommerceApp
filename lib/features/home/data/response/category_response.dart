import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/home/data/response/category_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_response.g.dart';


@JsonSerializable()
class CategoryResponse extends BaseResponse{

  @JsonKey(name: ApiConstants.data)
  CategoryDataResponse? data;

  CategoryResponse({this.data,});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CategoryResponseToJson(this);
}