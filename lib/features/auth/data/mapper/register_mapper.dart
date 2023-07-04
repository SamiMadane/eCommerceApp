import 'package:e_commerce/features/auth/data/response/register_response.dart';
import 'package:e_commerce/features/auth/domain/model/register.dart';
import 'package:e_commerce/features/auth/data/mapper/register_data_mapper.dart';


extension RegisterMapper on RegisterResponse {
  toDomain() {
    return Register(
      registerData: data?.toDomain(),
    );
  }
}
