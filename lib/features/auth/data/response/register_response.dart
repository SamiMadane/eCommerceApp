import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';


@JsonSerializable()
class RegisterResponse extends BaseResponse {
  @JsonKey(name: ApiConstants.status)
  bool? status;

  RegisterResponse(this.status);

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson(RegisterResponse instance) =>
      _$RegisterResponseToJson(this);

}
