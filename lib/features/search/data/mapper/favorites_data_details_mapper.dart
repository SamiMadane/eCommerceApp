import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/search/data/response/search_data_details_response.dart';
import 'package:e_commerce/features/search/domain/model/search_data_details_model.dart';

extension SearchDataDetailsMapper on SearchDataDetailsResponse{
  SearchDataDetailsModel toDomain(){
    return SearchDataDetailsModel(
      id: id.onNull(),
      price: price.onNull(),
      old_price: old_price.onNull(),
      image: image.onNull(),
      name: name.onNull(),
      description: description.onNull(),
      discount: discount.onNull(),
      in_cart: in_cart.onNull(),
      in_favorites: in_favorites.onNull(),
    );
  }
}