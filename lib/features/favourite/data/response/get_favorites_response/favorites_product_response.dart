import 'package:json_annotation/json_annotation.dart';

part 'favorites_product_response.g.dart';


@JsonSerializable()
class GetFavoritesProductResponse{
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'price')
  double? price;
  @JsonKey(name: 'old_price')
  double? old_price;
  @JsonKey(name: 'discount')
  double? discount;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name:'description')
  String? description;
  @JsonKey(name: 'in_favorites')
  bool? in_favorites;
  @JsonKey(name:'in_cart')
  bool? in_cart;

  GetFavoritesProductResponse({this.id,
    this.price,
    this.old_price,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.in_favorites,
    this.in_cart,
  });


  factory GetFavoritesProductResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetFavoritesProductResponseToJson(this);

}