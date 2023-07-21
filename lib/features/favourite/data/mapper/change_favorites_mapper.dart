import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/favourite/data/response/change_favorites_response.dart';
import 'package:e_commerce/features/favourite/domain/model/change_favorites_model.dart';

extension ChangeFavoritesMapper on ChangeFavoritesResponse {
  ChangeFavoritesModel toDomain() {
    return ChangeFavoritesModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
