import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';

import '../model/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileModel>> profile();
}