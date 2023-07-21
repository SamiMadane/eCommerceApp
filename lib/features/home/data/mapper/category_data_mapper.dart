import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/home/data/response/category_data_response.dart';
import 'package:e_commerce/features/home/domain/model/category_data_model.dart';
import 'category_data_details_mapper.dart';
extension CategoryDataMapper on CategoryDataResponse {
  CategoryDataModel toDomain() {
    return CategoryDataModel(
      currentPage: currentPage.onNull(),
      categoryDataDetailsModel: dataDetails?.map((e) => e.toDomain()).toList(),
    );
  }
}
