// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesDataResponse _$GetFavoritesDataResponseFromJson(
        Map<String, dynamic> json) =>
    GetFavoritesDataResponse(
      dataDetails: (json['data'] as List<dynamic>?)
          ?.map((e) => GetFavoritesDataDetailsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetFavoritesDataResponseToJson(
        GetFavoritesDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.dataDetails,
    };
