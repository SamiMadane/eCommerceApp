// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDataResponse _$CategoryDataResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryDataResponse(
      currentPage: json['current_page'] as int?,
      dataDetails: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              CategoryDataDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDataResponseToJson(
        CategoryDataResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.dataDetails,
    };
