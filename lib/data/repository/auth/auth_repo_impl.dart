import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/user_model.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domain/repository/auth/auth.dart';
import 'package:spotify_clone/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(UserModel user) async {
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(UserModel user) async {
    await sl<AuthFirebaseService>().signUp(user);
    throw UnimplementedError();
  }
}
