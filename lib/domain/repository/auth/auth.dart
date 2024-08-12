import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/user_model.dart';

abstract class AuthRepository {
  Future<Either> signIn(UserModel user);

  Future<Either> signUp(UserModel user);
}
