import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecases/usecase.dart';
import 'package:spotify_clone/data/models/auth/user_model.dart';
import 'package:spotify_clone/domain/repository/auth/auth.dart';
import 'package:spotify_clone/service_locator.dart';

class SignUpUseCase implements UseCase<Either, UserModel> {
  @override
  Future<Either> call({UserModel? params}) async {
    return sl<AuthRepository>().signUp(params!);
  }
}
