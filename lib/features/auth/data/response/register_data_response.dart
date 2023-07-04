import 'package:e_commerce/config/constant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_data_response.g.dart';

@JsonSerializable()
class RegisterDataResponse {
  @JsonKey(name: ApiConstants.token)
  String? token;


  RegisterDataResponse({this.token});

  factory RegisterDataResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RegisterDataResponseToJson(this);

}