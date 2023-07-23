import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_data_response.dart';
import 'package:e_commerce/features/profile/data/response/profile_data_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';


@JsonSerializable()
class ProfileResponse extends BaseResponse{

  @JsonKey(name: 'data')
  ProfileDataResponse? data;

  ProfileResponse({this.data,});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProfileResponseToJson(this);
}