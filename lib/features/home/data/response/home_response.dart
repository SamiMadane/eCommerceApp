import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/home/data/response/home_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_response.g.dart';


@JsonSerializable()
class HomeResponse extends BaseResponse{

  @JsonKey(name: 'data')
  HomeDataResponse? data;

  HomeResponse({this.data,});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$HomeResponseToJson(this);
}