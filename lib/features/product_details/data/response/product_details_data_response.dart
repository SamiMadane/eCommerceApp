import 'package:json_annotation/json_annotation.dart';

part 'product_details_data_response.g.dart';


@JsonSerializable()
class ProductDetailsDataResponse{
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

  ProductDetailsDataResponse({this.id,
    this.price,
    this.old_price,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.in_favorites,
    this.in_cart,
  });


factory ProductDetailsDataResponse.fromJson(Map<String, dynamic> json) =>
    _$ProductDetailsDataResponseFromJson(json);

Map<String, dynamic> toJson() => _$ProductDetailsDataResponseToJson(this);

}