import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorites_response.g.dart';


@JsonSerializable()
class GetFavoritesResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.data)
  GetFavoritesDataResponse? data;



  GetFavoritesResponse({this.data});

  factory GetFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetFavoritesResponseToJson(this);
}