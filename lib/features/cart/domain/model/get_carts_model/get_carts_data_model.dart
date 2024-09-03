import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_item_model.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_model.dart';

class GetCartsDataModel extends GetCartsModel{
  List<GetCartsItemModel>? cartsItem;
  GetCartsDataModel(
      {this.cartsItem});
}