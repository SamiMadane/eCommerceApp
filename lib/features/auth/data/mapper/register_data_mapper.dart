
import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/auth/data/response/register_data_response.dart';
import 'package:e_commerce/features/auth/domain/model/register_data.dart';

extension RegisterDataMapper on RegisterDataResponse {
  toDomain() {
    return RegisterData(
      token: token.onNull(),
    );
  }
}
