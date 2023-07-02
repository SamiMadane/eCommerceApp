import 'package:dio/dio.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/config/request_constant.dart';
import 'package:e_commerce/features/auth/data/response/login_response.dart';
import 'package:e_commerce/features/auth/data/response/register_response.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;

  @POST(RequestConstants.login)
  Future<LoginResponse> login(
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.password) password,
  );

  @POST(RequestConstants.register)
  Future<RegisterResponse> register(
    @Field(ApiConstants.name) name,
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.phone) phone,
    @Field(ApiConstants.password) password,
  );
}
