import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/product_details/data/request/product_details_request.dart';

import '../model/product_details_model.dart';

abstract class ProductDetailsRepository {
  Future<Either<Failure, ProductDetailsModel>> productDetails(int id);
}