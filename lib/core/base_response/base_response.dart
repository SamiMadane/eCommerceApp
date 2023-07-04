import 'package:json_annotation/json_annotation.dart';

import '../../config/constant.dart';
part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: ApiConstants.status)
  bool? status;
  @JsonKey(name: ApiConstants.message)
  String? message;


  BaseResponse({this.status, this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BaseResponseToJson(this);
}