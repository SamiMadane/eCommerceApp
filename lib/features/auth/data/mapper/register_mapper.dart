
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/auth/data/response/register_response.dart';
import 'package:e_commerce/features/auth/domain/model/register.dart';

extension RegisterMapper on RegisterResponse {
  toDomain() {
    return Register(status: status.onNull());
  }
}