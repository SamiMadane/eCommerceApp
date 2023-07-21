import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/home/domain/model/category_model.dart';

abstract class CategoryRepository {
  Future<Either<Failure, CategoryModel>> categories();
}