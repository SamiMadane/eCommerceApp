import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/favourite/data/request/favorite_request.dart';
import 'package:e_commerce/features/favourite/domain/model/change_favorites_model.dart';


abstract class FavoriteRepository {
  Future<Either<Failure, ChangeFavoritesModel>> favorites(FavoriteRequest favoriteRequest);
}