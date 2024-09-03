// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_data_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesDataDetailsResponse _$GetFavoritesDataDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    GetFavoritesDataDetailsResponse(
      favoritesProduct: json['product'] == null
          ? null
          : GetFavoritesProductResponse.fromJson(
              json['product'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetFavoritesDataDetailsResponseToJson(
        GetFavoritesDataDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'product': instance.favoritesProduct,
    };
