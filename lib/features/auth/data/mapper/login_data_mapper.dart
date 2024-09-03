import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/auth/data/response/login_data_response.dart';
import 'package:e_commerce/features/auth/domain/model/login_data.dart';

extension LoginDataMapper on LoginDataResponse {
  toDomain() {
    return LoginData(
      token: token.onNull(),
    );
  }
}
