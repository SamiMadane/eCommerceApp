import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/product_details/data/request/product_details_request.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_response.dart';

abstract class RemoteProductDetailsDataSource {
  Future<ProductDetailsResponse> productDetailsData(int id);
}

class RemoteProductDetailsDataSourceImplement extends RemoteProductDetailsDataSource {
  final AppApi _appApi;

  RemoteProductDetailsDataSourceImplement(this._appApi);

  @override
  Future<ProductDetailsResponse> productDetailsData(int id) async {
    return await _appApi.productDetails(id);
  }
}