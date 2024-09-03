import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_product_response.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_product_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_carts_item_response.g.dart';


@JsonSerializable()
class GetCartsItemResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.id)
  int? id;
  @JsonKey(name: ApiConstants.product)
  GetCartsProductResponse? cartsProduct;



  GetCartsItemResponse({this.id,this.cartsProduct});

  factory GetCartsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartsItemResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCartsItemResponseToJson(this);
}