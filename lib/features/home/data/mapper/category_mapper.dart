import 'package:e_commerce/features/home/data/response/category_response.dart';
import 'package:e_commerce/features/home/domain/model/category_model.dart';
import 'category_data_mapper.dart';

extension CategoryMapper on CategoryResponse{
  CategoryModel toDomain(){
    return CategoryModel(categoryDataModel:data?.toDomain());
  }
}