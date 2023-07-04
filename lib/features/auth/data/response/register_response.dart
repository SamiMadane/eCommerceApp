import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:e_commerce/features/auth/data/response/register_data_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';


@JsonSerializable()
class RegisterResponse extends BaseResponse {
  @JsonKey(name: ApiConstants.data)
  RegisterDataResponse? data;

  RegisterResponse(this.data);

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RegisterResponseToJson(this);

}
