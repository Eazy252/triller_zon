import 'package:triller_zone/models/auth_model.dart';
import 'package:triller_zone/utils/packages_helper.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<AuthResponse> createUser(AuthInput input) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: input.username,
        password: input.password!,
      );
      return AuthResponse(
        status: true,
        credential: credential,
      );
    } on FirebaseAuthException catch (e) {
      return AuthResponse(
        status: false,
        message: e.message,
      );
    }
  }

  Future<AuthResponse> loginUser(AuthInput input) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: input.username,
        password: input.password!,
      );
      return AuthResponse(
        status: true,
        credential: credential,
      );
    } on FirebaseAuthException catch (e) {
      return AuthResponse(
        status: false,
        message: e.message,
      );
    }
  }

  Future<AuthResponse> logout() async {
    try {
      await _auth.signOut();
      return AuthResponse(status: true);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(
        status: false,
        message: e.message,
      );
    }
  }

  Future<AuthResponse> updatePassword(AuthInput input) async {
    try {
      await _auth.sendPasswordResetEmail(email: input.username);
      return AuthResponse(status: true);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(
        status: false,
        message: e.message,
      );
    }
  }
}
