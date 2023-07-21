import 'package:e_commerce/features/home/data/mapper/products_mapper.dart';
import 'package:e_commerce/features/home/data/response/home_data_response.dart';
import 'package:e_commerce/features/home/domain/model/home_data_model.dart';

extension HomeDataMapper on HomeDataResponse{
  HomeDataModel toDomain(){
    return HomeDataModel(
      products: products?.map((e) => e.toDomain()).toList(),
    );
  }
}