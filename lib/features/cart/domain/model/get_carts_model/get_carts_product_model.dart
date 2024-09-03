
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_item_model.dart';

class GetCartsProductsModel extends GetCartsItemModel {
  int? id;
  double price;
  double old_price;
  double discount;
  String image;
  String name;
  String description;
  bool in_favorites;
  bool in_cart;

  GetCartsProductsModel({
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
