import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/auth/data/mapper/login_mapper.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../data/data_source/reomte_login_data_source.dart';
import '../../data/request/login_request.dart';

import '../../domain/model/login.dart';
import '../../domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final RemoteLoginDataSource _dataSource;

  final NetworkInfo networkInfo;

  LoginRepositoryImpl(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failure, Login>> login(LoginRequest loginRequest) async {
    if (await networkInfo.isConnected) {
      try{
        final response = await _dataSource.login(loginRequest);
        if(response.status == true){
          return Right(response.toDomain());
        }else{
          return Left(
            Failure(ResponseCode.BAD_REQUEST.value,response.message.onNull()),
          );
        }
      }catch(e){
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(
        Failure(ResponseCode.NO_INTERNET_CONNECTION.value,ApiConstants.no_internet_connection),
      );
    }
  }
}
