import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_model.dart';
import 'package:e_commerce/features/favourite/domain/repository/get_favorites_repository/favorites_repository.dart';

class GetFavoritesUseCase implements BaseOutUseCase {
  final GetFavoritesRepository _getFavoritesRepository;

  GetFavoritesUseCase(this._getFavoritesRepository);

  @override
  Future<Either<Failure, GetFavoritesModel>> execute() async {
    return await _getFavoritesRepository.favoriteProduct();
  }
}