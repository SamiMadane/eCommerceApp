import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/favourite/data/data_source/get_favorites_data_source_impl/remote_get_favorites_data_source.dart';
import 'package:e_commerce/features/favourite/data/mapper/get_favorites_mapper/favorites_mapper.dart';
import 'package:e_commerce/features/favourite/domain/model/get_favorites_model/favorites_model.dart';
import 'package:e_commerce/features/favourite/domain/repository/get_favorites_repository/favorites_repository.dart';


class GetFavoritesRepositoryImplementation implements GetFavoritesRepository {
  final RemoteGetFavoritesDataSource _dataSource;
  final NetworkInfo _networkInfo;

  GetFavoritesRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, GetFavoritesModel>> favoriteProduct() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.favoriteProduct();
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
