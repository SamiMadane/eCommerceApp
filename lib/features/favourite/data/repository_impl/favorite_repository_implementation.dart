import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/favourite/data/data_source/remote_favorite_data_source.dart';
import 'package:e_commerce/features/favourite/data/mapper/change_favorites_mapper.dart';
import 'package:e_commerce/features/favourite/data/request/favorite_request.dart';
import 'package:e_commerce/features/favourite/domain/model/change_favorites_model.dart';
import 'package:e_commerce/features/favourite/domain/repository/favorite_repository.dart';



class FavoriteRepositoryImplementation implements FavoriteRepository {
  final RemoteFavoriteDataSource _dataSource;
  final NetworkInfo _networkInfo;

  FavoriteRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, ChangeFavoritesModel>> favorites(FavoriteRequest favoriteRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.favoriteData(favoriteRequest);
        if(response.status==true)
          return Right(response.toDomain());
        else
          return Left(
            Failure(
              ResponseCode.BAD_REQUEST.value,
              ApiConstants.message.onNull(),
            ),
          );
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(
        Failure(
          ResponseCode.NO_INTERNET_CONNECTION.value,
          ApiConstants.noInternetConnection,
        ),
      );
    }
  }
}
