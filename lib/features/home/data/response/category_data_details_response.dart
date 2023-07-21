import 'package:e_commerce/core/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_data_details_response.g.dart';


@JsonSerializable()
class CategoryDataDetailsResponse {

  @JsonKey(name: 'id')
  int? id ;
  @JsonKey(name: 'name')
  String? name ;
  @JsonKey(name: 'image')
  String? image ;


  CategoryDataDetailsResponse({this.id, this.name, this.image});

  factory CategoryDataDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CategoryDataDetailsResponseToJson(this);
}