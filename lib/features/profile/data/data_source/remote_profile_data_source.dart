import 'package:e_commerce/core/network/app_api.dart';
import 'package:e_commerce/features/product_details/data/request/product_details_request.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_response.dart';
import 'package:e_commerce/features/profile/data/response/profile_response.dart';

abstract class RemoteProfileDataSource {
  Future<ProfileResponse> profileData();
}

class RemoteProfileDataSourceImplement extends RemoteProfileDataSource {
  final AppApi _appApi;

  RemoteProfileDataSourceImplement(this._appApi);

  @override
  Future<ProfileResponse> profileData() async {
    return await _appApi.profile();
  }
}