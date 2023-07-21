// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesResponse _$GetFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    GetFavoritesResponse(
      data: json['data'] == null
          ? null
          : GetFavoritesDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetFavoritesResponseToJson(
        GetFavoritesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
