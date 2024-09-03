import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/cart/data/request/carts_request.dart';
import 'package:e_commerce/features/cart/domain/model/carts_model.dart';
import '../repository/carts_repository.dart';

class CartsUseCaseInput {
  int? productID;

  CartsUseCaseInput({
    required this.productID,
  });
}


class CartsUseCase
    implements BaseUseCase<CartsUseCaseInput, CartsModel> {
  final CartsRepository _cartsRepository;

  CartsUseCase(this._cartsRepository);

  @override
  Future<Either<Failure, CartsModel>> execute(
      CartsUseCaseInput input) async {
    return await _cartsRepository.carts(
        CartsRequest(productID: input.productID)
    );
  }
}