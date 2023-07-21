import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_details_response.g.dart';


@JsonSerializable()
class ProductDetailsResponse extends BaseResponse{

  @JsonKey(name: 'data')
  ProductDetailsDataResponse? data;

  ProductDetailsResponse({this.data,});

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsResponseToJson(this);
}