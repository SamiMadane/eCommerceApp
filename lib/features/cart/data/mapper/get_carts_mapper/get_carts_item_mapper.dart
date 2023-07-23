import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_item_response.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_item_model.dart';
import 'get_carts_product_mapper.dart';

extension GetCartsItemMapper on GetCartsItemResponse{
  GetCartsItemModel toDomain(){
    return GetCartsItemModel(
      id: id?.onNull(),
      cartsProduct: cartsProduct?.toDomain(),
    );
  }
}