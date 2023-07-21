import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/product_details/data/data_source/remote_product_details_data_source.dart';
import 'package:e_commerce/features/product_details/data/mapper/product_details_mapper.dart';
import 'package:e_commerce/features/product_details/data/request/product_details_request.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_model.dart';
import 'package:e_commerce/features/product_details/domain/repository/product_details_repository.dart';


class ProductDetailsRepositoryImplementation implements ProductDetailsRepository {
  final RemoteProductDetailsDataSource _dataSource;
  final NetworkInfo _networkInfo;

  ProductDetailsRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, ProductDetailsModel>> productDetails(int id) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.productDetailsData(id);
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
