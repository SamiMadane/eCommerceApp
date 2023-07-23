import 'package:e_commerce/config/constant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'carts_response.g.dart';


@JsonSerializable()
class CartsResponse{
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;


  CartsResponse({this.status,this.message});

  factory CartsResponse.fromJson(Map<String, dynamic> json) =>
      _$CartsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CartsResponseToJson(this);
}