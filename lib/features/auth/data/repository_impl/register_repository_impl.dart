
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/auth/data/data_source/reomte_register_data_source.dart';
import 'package:e_commerce/features/auth/data/mapper/register_mapper.dart';
import 'package:e_commerce/features/auth/domain/model/register.dart';

import '../../data/request/register_request.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/internet_checker/internet_checker.dart';

import '../../domain/repository/regsiter_repository.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RemoteRegisterDataSource _dataSource;
  final NetworkInfo networkInfo;

  RegisterRepositoryImpl(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failure, Register>> register(RegisterRequest registerRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.register(registerRequest);
        return Right(response.toDomain());
      } catch (e) {
        return Left(
          ErrorHandler.handle(e).failure,
        );
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
