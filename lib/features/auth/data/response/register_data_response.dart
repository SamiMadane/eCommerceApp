import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_data_response.g.dart';

@JsonSerializable()
class RegisterDataResponse extends BaseResponse {
  @JsonKey(name: ApiConstants.token)
  String? token;


  RegisterDataResponse(this.token,);

  factory RegisterDataResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataResponseFromJson(json);

  Map<String, dynamic> toJson(RegisterDataResponse instance) =>
      _$RegisterDataResponseToJson(this);
}
