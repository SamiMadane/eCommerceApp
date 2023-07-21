import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/home/domain/model/category_data_model.dart';

class CategoryDataDetailsModel extends CategoryDataModel {
  int? id;
  String? name;
  String? image;

  CategoryDataDetailsModel(
      {this.id, this.name, this.image});
}
