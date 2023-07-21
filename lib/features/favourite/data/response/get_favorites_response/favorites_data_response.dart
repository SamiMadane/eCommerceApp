import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_data_details_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorites_data_response.g.dart';


@JsonSerializable()
class GetFavoritesDataResponse extends BaseResponse{
  @JsonKey(name: ApiConstants.data)
  List<GetFavoritesDataDetailsResponse>? dataDetails;



  GetFavoritesDataResponse({this.dataDetails});

  factory GetFavoritesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetFavoritesDataResponseToJson(this);
}