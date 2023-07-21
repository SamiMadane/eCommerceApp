import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/home/data/data_source/remote_category_data_source.dart';
import 'package:e_commerce/features/home/data/mapper/category_mapper.dart';
import 'package:e_commerce/features/home/data/mapper/home_mapper.dart';
import 'package:e_commerce/features/home/domain/model/category_model.dart';
import 'package:e_commerce/features/home/domain/repository/category_repository.dart';



class CategoryRepositoryImplementation implements CategoryRepository {
  final RemoteCategoryDataSource _dataSource;
  final NetworkInfo _networkInfo;

  CategoryRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, CategoryModel>> categories() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.categoryData();
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
