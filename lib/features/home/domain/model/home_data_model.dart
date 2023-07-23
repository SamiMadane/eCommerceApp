import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/home/domain/model/banners_model.dart';
import 'package:e_commerce/features/home/domain/model/products_model.dart';

class HomeDataModel extends BaseModel{
  List<BannersModel>? banners;
  List<ProductsModel>? products;


  HomeDataModel({this.banners,this.products,super.message,super.status});

}