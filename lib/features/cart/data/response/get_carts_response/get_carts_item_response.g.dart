// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_carts_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartsItemResponse _$GetCartsItemResponseFromJson(
        Map<String, dynamic> json) =>
    GetCartsItemResponse(
      id: json['id'] as int?,
      cartsProduct: json['product'] == null
          ? null
          : GetCartsProductResponse.fromJson(
              json['product'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetCartsItemResponseToJson(
        GetCartsItemResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'product': instance.cartsProduct,
    };
