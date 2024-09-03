// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeFavoritesResponse _$ChangeFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    ChangeFavoritesResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ChangeFavoritesResponseToJson(
        ChangeFavoritesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
