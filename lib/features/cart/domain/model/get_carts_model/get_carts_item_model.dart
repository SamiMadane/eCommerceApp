import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_data_model.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_product_model.dart';

class GetCartsItemModel extends GetCartsDataModel{
  int? id;
  GetCartsProductsModel? cartsProduct;
  GetCartsItemModel(
      {this.id, this.cartsProduct});
}