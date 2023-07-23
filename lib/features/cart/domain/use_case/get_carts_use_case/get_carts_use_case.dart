import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/cart/domain/model/get_carts_model/get_carts_model.dart';
import 'package:e_commerce/features/cart/domain/repository/get_carts_repository/get_carts_repository.dart';

class GetCartsUseCase implements BaseOutUseCase {
  final GetCartsRepository _getCartsRepository;

  GetCartsUseCase(this._getCartsRepository);

  @override
  Future<Either<Failure, GetCartsModel>> execute() async {
    return await _getCartsRepository.cartProduct();
  }
}