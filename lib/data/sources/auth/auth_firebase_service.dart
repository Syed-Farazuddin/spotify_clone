import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:spotify_clone/data/models/auth/user_model.dart';

abstract class AuthFirebaseService {
  Future<Either> signIn();
  Future<Either> signUp(UserModel user);
}

class AuthFirebaseServiceImplementation extends AuthFirebaseService {
  @override
  Future<Either> signIn() async {
    try {
      return const Right("Successfully signed in!");
    } catch (e) {
      debugPrint("$e");
      return const Left("Error! Sign-in failed.");
    }
    // Implement Firebase sign-in logic
  }

  @override
  Future<Either> signUp(UserModel user) async {
    // Implement Firebase sign-up logic
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return const Right("Successfully signed up!");
    } on FirebaseAuthException catch (e) {
      debugPrint("$e");
      String message = "Error! ";
      return Left(message);
    }
  }
}
