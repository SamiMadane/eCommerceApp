import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/home/domain/model/products_model.dart';

class HomeDataModel extends BaseModel{
  List<ProductsModel>? products;


  HomeDataModel({this.products,super.message,super.status});

}