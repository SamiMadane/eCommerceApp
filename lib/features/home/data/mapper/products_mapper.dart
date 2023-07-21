import 'package:e_commerce/features/home/data/response/products_response.dart';
import 'package:e_commerce/features/home/domain/model/products_model.dart';
import 'package:e_commerce/core/extensions/extensions.dart';

extension ProductsMapper on ProductsResponse{
  ProductsModel toDomain(){
    return ProductsModel(
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