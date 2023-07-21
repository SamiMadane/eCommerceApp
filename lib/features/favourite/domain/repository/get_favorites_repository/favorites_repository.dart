import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_model.dart';


abstract class GetFavoritesRepository {
  Future<Either<Failure, GetFavoritesModel>> favoriteProduct();
}