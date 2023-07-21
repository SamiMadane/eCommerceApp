import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_product_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorites_data_details_response.g.dart';


@JsonSerializable()
class GetFavoritesDataDetailsResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.product)
  GetFavoritesProductResponse? favoritesProduct;



  GetFavoritesDataDetailsResponse({this.favoritesProduct});

  factory GetFavoritesDataDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesDataDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetFavoritesDataDetailsResponseToJson(this);
}