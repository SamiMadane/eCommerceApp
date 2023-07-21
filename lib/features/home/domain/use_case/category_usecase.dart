import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/home/domain/model/category_model.dart';
import 'package:e_commerce/features/home/domain/model/home_model.dart';
import 'package:e_commerce/features/home/domain/repository/category_repository.dart';
import 'package:e_commerce/features/home/domain/repository/home_repository.dart';

class CategoryUseCase implements BaseOutUseCase {
  final CategoryRepository _categoryRepository;

  CategoryUseCase(this._categoryRepository);

  @override
  Future<Either<Failure, CategoryModel>> execute() async {
    return await _categoryRepository.categories();
  }
}