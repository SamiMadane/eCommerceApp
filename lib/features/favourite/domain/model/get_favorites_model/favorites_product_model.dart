import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_data_details_model.dart';

class GetFavoritesProductsModel extends GetFavoritesDataDetailsModel {
  int id;
  double price;
  double old_price;
  double discount;
  String image;
  String name;
  String description;
  bool in_favorites;
  bool in_cart;

  GetFavoritesProductsModel({
    required this.id,
    required this.price,
    required this.old_price,
    required this.discount,
    required this.image,
    required this.name,
    required this.description,
    required this.in_favorites,
    required this.in_cart,
  });
}
