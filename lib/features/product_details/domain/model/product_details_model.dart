import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_data_model.dart';

class ProductDetailsModel extends BaseModel{
  ProductDetailsDataModel? data;

  ProductDetailsModel({this.data,super.message,super.status});

}