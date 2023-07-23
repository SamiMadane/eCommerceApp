import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_data_model.dart';


class GetCartsModel extends BaseModel{
  GetCartsDataModel? data;
  GetCartsModel(
      {this.data,super.message,super.status});
}