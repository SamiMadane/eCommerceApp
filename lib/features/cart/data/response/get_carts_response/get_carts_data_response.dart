import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_item_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_carts_data_response.g.dart';


@JsonSerializable()
class GetCartsDataResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.cartItem)
  List<GetCartsItemResponse>? cartsItem;



  GetCartsDataResponse({this.cartsItem});

  factory GetCartsDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartsDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCartsDataResponseToJson(this);
}