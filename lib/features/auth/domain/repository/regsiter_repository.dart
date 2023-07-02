import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/auth/data/request/register_request.dart';
import 'package:e_commerce/features/auth/domain/model/register.dart';


abstract class RegisterRepository {
  Future<Either<Failure,Register>> register(RegisterRequest registerRequest);
}