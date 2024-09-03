// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_carts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartsResponse _$GetCartsResponseFromJson(Map<String, dynamic> json) =>
    GetCartsResponse(
      data: json['data'] == null
          ? null
          : GetCartsDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetCartsResponseToJson(GetCartsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
