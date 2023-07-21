import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handler/error_handler.dart';
import 'package:e_commerce/core/use_case/base_use_case.dart';
import 'package:e_commerce/features/auth/data/request/login_request.dart';
import 'package:e_commerce/features/auth/domain/model/login.dart';
import 'package:e_commerce/features/auth/domain/repository/login_repository.dart';
import 'package:e_commerce/features/search/data/request/search_request.dart';
import 'package:e_commerce/features/search/domain/model/search_model.dart';
import 'package:e_commerce/features/search/domain/repository/search_repository.dart';


class SearchUseCaseInput{
  String? text;

  SearchUseCaseInput({
    required this.text,
  });
}

class SearchUseCase implements BaseUseCase<SearchUseCaseInput , SearchModel>{
  final SearchRepository _searchRepository;

  SearchUseCase(this._searchRepository);

  @override
  Future<Either<Failure, SearchModel>> execute(SearchUseCaseInput input) async{
    return await _searchRepository.search(
      SearchRequest(text: input.text),
    );
  }


}