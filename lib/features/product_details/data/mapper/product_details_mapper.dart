import 'package:e_commerce/features/product_details/data/response/product_details_response.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_model.dart';
import 'package:e_commerce/features/product_details/data/mapper/product_details_data_mapper.dart';

extension ProductMapper on ProductDetailsResponse{
  ProductDetailsModel toDomain(){
    return ProductDetailsModel(
      data: data?.toDomain(),
    );
  }
}