
import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/auth/data/request/login_request.dart';
import 'package:e_commerce/features/auth/domain/model/login.dart';

abstract class LoginRepository {

  Future<Either<Failure,Login>> login(LoginRequest loginRequest);
}