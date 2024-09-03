import 'package:e_commerce/features/home/domain/model/category_data_details_model.dart';
import 'package:e_commerce/features/home/domain/model/category_model.dart';

class CategoryDataModel extends CategoryModel {
  int? currentPage;
  List<CategoryDataDetailsModel>? categoryDataDetailsModel;

  CategoryDataModel(
      {this.currentPage,
      this.categoryDataDetailsModel,
      });
}
