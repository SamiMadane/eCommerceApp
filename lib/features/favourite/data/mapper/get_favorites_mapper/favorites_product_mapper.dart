import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_product_response.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_product_model.dart';
import 'package:e_commerce/core/extensions/extensions.dart';

extension GetFavoritesProductMapper on GetFavoritesProductResponse{
  GetFavoritesProductsModel toDomain(){
    return GetFavoritesProductsModel(
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