// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataResponse _$ProfileDataResponseFromJson(Map<String, dynamic> json) =>
    ProfileDataResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      points: json['points'] as int?,
      credit: json['credit'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$ProfileDataResponseToJson(
        ProfileDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'points': instance.points,
      'credit': instance.credit,
      'token': instance.token,
    };
