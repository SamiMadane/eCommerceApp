import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/auth/domain/model/login_data.dart';

class Login extends BaseModel {
  LoginData? loginData;
  Login({required this.loginData,super.message,super.status});
}
