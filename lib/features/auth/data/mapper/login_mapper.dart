import 'package:e_commerce/features/auth/data/mapper/login_data_mapper.dart';
import 'package:e_commerce/features/auth/data/response/login_response.dart';
import '../../domain/model/login.dart';

extension LoginMapper on LoginResponse {
  Login toDomain() {
    return Login(
      loginData: data?.toDomain(),
    );
  }
}
