// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesProductResponse _$GetFavoritesProductResponseFromJson(
        Map<String, dynamic> json) =>
    GetFavoritesProductResponse(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      old_price: (json['old_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      in_favorites: json['in_favorites'] as bool?,
      in_cart: json['in_cart'] as bool?,
    );

Map<String, dynamic> _$GetFavoritesProductResponseToJson(
        GetFavoritesProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'old_price': instance.old_price,
      'discount': instance.discount,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'in_favorites': instance.in_favorites,
      'in_cart': instance.in_cart,
    };
