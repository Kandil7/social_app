import 'package:dartz/dartz.dart';
import 'package:social_app/core/errors/failure.dart';
import 'package:social_app/features/auth/domain/entities/user_entity.dart';
import 'package:social_app/features/auth/domain/repositories/auth_repository.dart';

class GetUserUsecase {
  final AuthRepository _authRepostitory;

  GetUserUsecase(this._authRepostitory);

  Future<Either<Failure, UserEntity>> call() async {
    return await _authRepostitory.getUser();
  }
}
