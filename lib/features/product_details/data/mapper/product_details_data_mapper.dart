import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_data_response.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_data_model.dart';

extension ProductDetailsDataMapper on ProductDetailsDataResponse{
  ProductDetailsDataModel toDomain(){
    return ProductDetailsDataModel(
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