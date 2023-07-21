import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/features/search/data/request/search_request.dart';
import 'package:e_commerce/features/search/domain/model/search_model.dart';


abstract class SearchRepository {
  Future<Either<Failure, SearchModel>> search(SearchRequest searchRequest);
}