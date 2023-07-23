import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/cart/data/request/carts_request.dart';
import 'package:e_commerce/features/cart/data/response/carts_response.dart';


abstract class RemoteCartsDataSource {
  Future<CartsResponse> cartData(CartsRequest cartsRequest);
}

class RemoteCartsDataSourceImplement extends RemoteCartsDataSource {
  final AppApi _appApi;

  RemoteCartsDataSourceImplement(this._appApi);

  @override
  Future<CartsResponse> cartData(CartsRequest cartsRequest) async {
    return await _appApi.carts(cartsRequest.productID);
  }
}
