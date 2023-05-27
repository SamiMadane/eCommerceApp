import 'package:e_commerce/core/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/constant.dart';

class AppSettingSharedPrefernces {
  final SharedPreferences _sharedPreferences;

  AppSettingSharedPrefernces(this._sharedPreferences);

  Future<void> setOutBoardingViewed() async{
    await _sharedPreferences.setBool(ConstantsPrefKey.out_boarding_viewed, true);
  }

  bool getOutBoardingViewed(){
    return _sharedPreferences.getBool(ConstantsPrefKey.out_boarding_viewed).onNull();
  }
  void clear(){
    _sharedPreferences.clear();
  }
}