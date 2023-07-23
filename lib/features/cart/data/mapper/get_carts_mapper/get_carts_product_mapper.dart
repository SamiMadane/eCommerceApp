import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_product_response.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_product_model.dart';
import 'package:e_commerce/core/extensions/extensions.dart';

extension GetCartsProductMapper on GetCartsProductResponse{
  GetCartsProductsModel toDomain(){
    return GetCartsProductsModel(
      id: id.onNull(),
      price: price.onNull(),
      old_price: old_price.onNull(),
      image: image.onNull(),
      name: name.onNull(),
      description: description.onNull(),
      discount: discount.onNull(),
      in_cart: in_cart.onNull(),
      in_favorites: in_favorites.onNull(),
    );
  }
}