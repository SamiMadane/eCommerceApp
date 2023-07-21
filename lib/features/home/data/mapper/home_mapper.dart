import 'package:e_commerce/features/home/data/response/home_response.dart';
import 'package:e_commerce/features/home/domain/model/home_model.dart';
import 'home_data_mapper.dart';

extension HomeMapper on HomeResponse{
  HomeModel toDomain(){
    return HomeModel(
      data: data?.toDomain(),
    );
  }
}