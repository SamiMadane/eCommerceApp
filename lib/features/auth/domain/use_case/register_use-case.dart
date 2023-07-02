import 'package:dartz/dartz.dart';

import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../../data/request/register_request.dart';
import '../model/register.dart';
import '../repository/regsiter_repository.dart';

class RegisterUseCaseInput {
  String? name;
  String? email;
  String? phone;
  String? password;

  RegisterUseCaseInput({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });
}

class RegisterUseCase implements BaseUseCase<RegisterUseCaseInput, Register> {
  final RegisterRepository _registerRepository;

  RegisterUseCase(this._registerRepository);

  @override
  Future<Either<Failure, Register>> execute(RegisterUseCaseInput input) async {
    return await _registerRepository.register(RegisterRequest(
      name: input.name,
      email: input.email,
      phone: input.phone,
      password: input.password,
    ));
  } // ببعت ال input على data source عشان يبعتها request على api
}
