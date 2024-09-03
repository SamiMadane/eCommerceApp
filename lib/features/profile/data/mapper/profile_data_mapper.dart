import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:e_commerce/features/product_details/domain/model/product_details_data_model.dart';
import 'package:e_commerce/features/profile/data/response/profile_data_response.dart';
import 'package:e_commerce/features/profile/domain/model/profile_data_model.dart';

extension ProfileDataMapper on ProfileDataResponse{
  ProfileDataModel toDomain(){
    return ProfileDataModel(
      id: id.onNull(),
      name: name.onNull(),
      email: email.onNull(),
      phone: phone.onNull(),
      image: image.onNull(),
      points: points.onNull(),
      credit: credit.onNull(),
      token: token.onNull(),
    );
  }
}