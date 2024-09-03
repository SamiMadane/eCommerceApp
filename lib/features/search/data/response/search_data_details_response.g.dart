// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchDataDetailsResponse _$SearchDataDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    SearchDataDetailsResponse(
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

Map<String, dynamic> _$SearchDataDetailsResponseToJson(
        SearchDataDetailsResponse instance) =>
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
