import 'package:json_annotation/json_annotation.dart';

part 'profile_data_response.g.dart';


@JsonSerializable()
class ProfileDataResponse{
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'points')
  int? points;
  @JsonKey(name:'credit')
  int? credit;
  @JsonKey(name: 'token')
  String? token;


  ProfileDataResponse({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.points,
    this.credit,
    this.token,
  });

  factory ProfileDataResponse.fromJson(Map<String, dynamic> json) =>
    _$ProfileDataResponseFromJson(json);

Map<String, dynamic> toJson() => _$ProfileDataResponseToJson(this);

}