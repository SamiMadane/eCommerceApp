import 'package:e_commerce/features/home/data/response/banners_response.dart';
import 'package:e_commerce/features/home/data/response/products_response.dart';
import 'package:e_commerce/features/home/domain/model/banners_model.dart';
import 'package:e_commerce/features/home/domain/model/products_model.dart';
import 'package:e_commerce/core/extensions/extensions.dart';

extension BannersMapper on BannersResponse {
  BannersModel toDomain() {
    return BannersModel(
      id: id.onNull(),
      image: image.onNull(),
    );
  }
}
