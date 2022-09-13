import 'package:triller_zone/utils/packages_helper.dart';

class AuthInput {
  final String username;
  final String? password;

  const AuthInput({
    required this.username,
     this.password,
  });
}

class AuthResponse {
  final bool status;
  UserCredential? credential;
  String? message;

  AuthResponse({
    required this.status,
    this.credential,
    this.message,
  });
}
