import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/cart/data/data_source/get_favorites_data_source_impl/remote_get_carts_data_source.dart';
import 'package:e_commerce/features/cart/data/mapper/get_carts_mapper/get_carts_mapper.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_model.dart';
import 'package:e_commerce/features/cart/domain/repository/get_carts_repository/get_carts_repository.dart';


class GetCartsRepositoryImplementation implements GetCartsRepository {
  final RemoteGetCartsDataSource _dataSource;
  final NetworkInfo _networkInfo;

  GetCartsRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, GetCartsModel>> cartProduct() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.cartProduct();
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
