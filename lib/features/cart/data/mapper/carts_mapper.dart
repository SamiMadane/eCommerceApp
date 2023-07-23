import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/cart/data/response/carts_response.dart';
import 'package:e_commerce/features/cart/domain/model/carts_model.dart';

extension CartsMapper on CartsResponse {
  CartsModel toDomain() {
    return CartsModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
