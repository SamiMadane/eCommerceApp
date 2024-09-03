import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_response.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_model.dart';
import 'get_carts_data_mapper.dart';

extension GetCartsMapper on GetCartsResponse{
  GetCartsModel toDomain(){
    return GetCartsModel(
      data: data?.toDomain(),
    );
  }
}