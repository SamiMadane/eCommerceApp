import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/cart/data/request/carts_request.dart';
import 'package:e_commerce/features/cart/domain/model/carts_model.dart';


abstract class CartsRepository {
  Future<Either<Failure, CartsModel>> carts(CartsRequest cartsRequest);
}