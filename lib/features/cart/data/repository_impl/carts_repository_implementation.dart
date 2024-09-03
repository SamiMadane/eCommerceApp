import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/cart/data/data_source/remote_carts_data_source.dart';
import 'package:e_commerce/features/cart/data/mapper/carts_mapper.dart';
import 'package:e_commerce/features/cart/data/request/carts_request.dart';
import 'package:e_commerce/features/cart/domain/model/carts_model.dart';
import 'package:e_commerce/features/cart/domain/repository/carts_repository.dart';



class CartsRepositoryImplementation implements CartsRepository {
  final RemoteCartsDataSource _dataSource;
  final NetworkInfo _networkInfo;

  CartsRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, CartsModel>> carts(CartsRequest cartsRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.cartData(cartsRequest);
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
