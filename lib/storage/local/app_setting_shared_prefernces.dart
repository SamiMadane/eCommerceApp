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

  Future<void> setToken(String token) async {
    await _sharedPreferences.setString(ConstantsPrefKey.token, token);
  }

  String getToken() {
    return _sharedPreferences.getString(ConstantsPrefKey.token).onNull();
  }


  Future<void> setEmail(String email) async {
    await _sharedPreferences.setString(ConstantsPrefKey.email, email);
  }

  String getEmail() {
    return _sharedPreferences.getString(ConstantsPrefKey.email).onNull();
  }

  Future<void> setPassword(String password) async {
    await _sharedPreferences.setString(ConstantsPrefKey.password, password);
  }

  String getPassword() {
    return _sharedPreferences.getString(ConstantsPrefKey.password).onNull();
  }

  Future<void> setLoggedIn() async {
    await _sharedPreferences.setBool(ConstantsPrefKey.loggedIn, true);
  }

  bool loggedIn() {
    return _sharedPreferences.getBool(ConstantsPrefKey.loggedIn).onNull();
  }
}