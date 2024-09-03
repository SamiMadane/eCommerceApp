// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_carts_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartsDataResponse _$GetCartsDataResponseFromJson(
        Map<String, dynamic> json) =>
    GetCartsDataResponse(
      cartsItem: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => GetCartsItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetCartsDataResponseToJson(
        GetCartsDataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'cart_items': instance.cartsItem,
    };
