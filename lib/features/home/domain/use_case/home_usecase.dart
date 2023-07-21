import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/home/domain/model/home_model.dart';
import 'package:e_commerce/features/home/domain/repository/home_repository.dart';

class HomeUseCase implements BaseOutUseCase {
  final HomeRepository _homeRepository;

  HomeUseCase(this._homeRepository);

  @override
  Future<Either<Failure, HomeModel>> execute() async {
    return await _homeRepository.home();
  }
}