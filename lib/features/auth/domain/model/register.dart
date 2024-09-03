import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/auth/domain/model/register_data.dart';

class Register extends BaseModel {
  RegisterData? registerData;

  Register({required this.registerData,super.message,super.status});
}