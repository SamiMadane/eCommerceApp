import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/product_details/data/request/product_details_request.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_model.dart';
import 'package:e_commerce/features/product_details/domain/repository/product_details_repository.dart';


class ProductDetailsUseCaseInput {
  int productID;

  ProductDetailsUseCaseInput({
    required this.productID,
  });
}


class ProductDetailsUseCase
    implements BaseUseCase<ProductDetailsUseCaseInput, ProductDetailsModel> {
  final ProductDetailsRepository _productDetailsRepository;

  ProductDetailsUseCase(this._productDetailsRepository);

  @override
  Future<Either<Failure, ProductDetailsModel>> execute(
      ProductDetailsUseCaseInput input) async {
    return await _productDetailsRepository.productDetails(input.productID);
  }
}