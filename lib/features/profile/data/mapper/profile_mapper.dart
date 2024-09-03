import 'package:e_commerce/features/profile/data/response/profile_response.dart';
import 'package:e_commerce/features/profile/domain/model/profile_model.dart';
import 'profile_data_mapper.dart';

extension ProfileMapper on ProfileResponse{
  ProfileModel toDomain(){
    return ProfileModel(
      data: data?.toDomain(),
    );
  }
}