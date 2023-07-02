

import 'package:e_commerce/features/auth/data/request/register_request.dart';
import 'package:e_commerce/features/auth/data/response/register_response.dart';

import '../../../../core/network/app_api.dart';

abstract class RemoteRegisterDataSource {
  Future<RegisterResponse> register(RegisterRequest registerRequest);
}

class RemoteRegisterDataSourceImplement implements RemoteRegisterDataSource {
  final AppApi _appApi;

  RemoteRegisterDataSourceImplement(this._appApi);

  @override
  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    return await _appApi.register(
      registerRequest.name,
      registerRequest.email,
      registerRequest.phone,
      registerRequest.password,
    );
  }
}
