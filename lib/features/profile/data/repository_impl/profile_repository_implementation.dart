import 'package:dartz/dartz.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/core/internet_checker/internet_checker.dart';
import 'package:e_commerce/features/profile/data/data_source/remote_profile_data_source.dart';
import 'package:e_commerce/features/profile/data/mapper/profile_mapper.dart';
import 'package:e_commerce/features/profile/domain/model/profile_model.dart';
import 'package:e_commerce/features/profile/domain/repository/profile_repository.dart';


class ProfileRepositoryImplementation implements ProfileRepository {
  final RemoteProfileDataSource _dataSource;
  final NetworkInfo _networkInfo;

  ProfileRepositoryImplementation(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, ProfileModel>> profile() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.profileData();
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
