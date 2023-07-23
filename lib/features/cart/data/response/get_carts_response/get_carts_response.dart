import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_carts_response.g.dart';


@JsonSerializable()
class GetCartsResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.data)
  GetCartsDataResponse? data;



  GetCartsResponse({this.data});

  factory GetCartsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCartsResponseToJson(this);
}