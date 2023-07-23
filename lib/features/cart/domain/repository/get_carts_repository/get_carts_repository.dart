import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_model.dart';


abstract class GetCartsRepository {
  Future<Either<Failure, GetCartsModel>> cartProduct();
}