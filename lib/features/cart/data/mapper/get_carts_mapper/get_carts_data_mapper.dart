import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_data_response.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_data_model.dart';
import 'get_carts_item_mapper.dart';

extension GetCartsDataMapper on GetCartsDataResponse{
  GetCartsDataModel toDomain(){
    return GetCartsDataModel(
      cartsItem: cartsItem?.map((e) => e.toDomain()).toList(),
    );
  }
}