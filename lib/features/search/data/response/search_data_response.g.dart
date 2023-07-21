// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchDataResponse _$SearchDataResponseFromJson(Map<String, dynamic> json) =>
    SearchDataResponse(
      dataDetails: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              SearchDataDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$SearchDataResponseToJson(SearchDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.dataDetails,
    };
