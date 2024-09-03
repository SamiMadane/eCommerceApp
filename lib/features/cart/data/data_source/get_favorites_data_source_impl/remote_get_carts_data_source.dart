import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/cart/data/response/get_carts_response/get_carts_response.dart';

abstract class RemoteGetCartsDataSource {
  Future<GetCartsResponse> cartProduct();
}

class RemoteGetCartsDataSourceImplement extends RemoteGetCartsDataSource {
  final AppApi _appApi;

  RemoteGetCartsDataSourceImplement(this._appApi);

  @override
  Future<GetCartsResponse> cartProduct() async {
    return await _appApi.cartProduct();
  }
}