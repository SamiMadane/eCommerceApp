import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/home/data/response/category_data_details_response.dart';
import 'package:e_commerce/features/home/domain/model/category_data_details_model.dart';

extension CategoryDataDetailsMapper on CategoryDataDetailsResponse {
  CategoryDataDetailsModel toDomain() {
    return CategoryDataDetailsModel(
      id: id.onNull(),
      name: name.onNull(),
      image: image.onNull(),
    );
  }
}
