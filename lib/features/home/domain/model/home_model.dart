import 'package:e_commerce/core/base_model/base_model.dart';
import 'package:e_commerce/features/home/domain/model/home_data_model.dart';

class HomeModel extends BaseModel{
  HomeDataModel? data;

  HomeModel({this.data,super.message,super.status});

}