import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/favourite/data/request/favorite_request.dart';
import 'package:e_commerce/features/favourite/domain/model/change_favorites_model.dart';
import '../repository/favorite_repository.dart';

class FavoriteUseCaseInput {
  int? productID;

  FavoriteUseCaseInput({
    required this.productID,
  });
}


class FavoriteUseCase
    implements BaseUseCase<FavoriteUseCaseInput, ChangeFavoritesModel> {
  final FavoriteRepository _favoriteRepository;

  FavoriteUseCase(this._favoriteRepository);

  @override
  Future<Either<Failure, ChangeFavoritesModel>> execute(
      FavoriteUseCaseInput input) async {
    return await _favoriteRepository.favorites(
      FavoriteRequest(productID: input.productID)
    );
  }
}