import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/profile/domain/model/profile_model.dart';
import 'package:e_commerce/features/profile/domain/repository/profile_repository.dart';


class ProfileUseCase implements BaseOutUseCase {
  final ProfileRepository _profileRepository;

  ProfileUseCase(this._profileRepository);

  @override
  Future<Either<Failure, ProfileModel>> execute() async {
    return await _profileRepository.profile();
  }
}