import 'package:dio/dio.dart';
import 'package:e_commerce/config/constant.dart';
import 'package:e_commerce/config/request_constant.dart';
import 'package:e_commerce/features/auth/data/response/login_response.dart';
import 'package:e_commerce/features/auth/data/response/register_response.dart';
import 'package:e_commerce/features/favourite/data/response/change_favorites_response.dart';
import 'package:e_commerce/features/favourite/data/response/get_favorites_response/favorites_response.dart';
import 'package:e_commerce/features/home/data/response/category_response.dart';
import 'package:e_commerce/features/home/data/response/home_response.dart';
import 'package:e_commerce/features/product_details/data/response/product_details_response.dart';
import 'package:e_commerce/features/profile/data/response/profile_response.dart';
import 'package:e_commerce/features/search/data/response/search_response.dart';
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

  @GET(RequestConstants.home)
  Future<HomeResponse> home();

  @GET(RequestConstants.categories)
  Future<CategoryResponse> categories();

  @GET(RequestConstants.productDetails)
  Future<ProductDetailsResponse> productDetails(
      @Path('id') int id,
      );

  @POST(RequestConstants.favorites)
  Future<ChangeFavoritesResponse> favorites(
    @Field(ApiConstants.productID) product_id,
  );

  @GET(RequestConstants.favorites)
  Future<GetFavoritesResponse> favoriteProduct();

  @POST(RequestConstants.search)
  Future<SearchResponse> search(
      @Field(ApiConstants.text) text,
      );

  @GET(RequestConstants.profile)
  Future<ProfileResponse> profile();
}
