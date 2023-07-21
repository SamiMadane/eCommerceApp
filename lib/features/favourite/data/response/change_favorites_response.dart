import 'package:e_commerce/config/constant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_favorites_response.g.dart';


@JsonSerializable()
class ChangeFavoritesResponse{
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;


  ChangeFavoritesResponse({this.status,this.message});

  factory ChangeFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeFavoritesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChangeFavoritesResponseToJson(this);
}