

import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/auth/data/response/login_response.dart';

import '../../domain/model/login.dart';

extension LoginMapper on LoginResponse {
  toDomain() {
    return Login(token: status.onNull());
  }
}