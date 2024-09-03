import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/profile/domain/model/profile_data_model.dart';

class ProfileModel extends BaseModel{
  ProfileDataModel? data;

  ProfileModel({this.data,super.message,super.status});

}