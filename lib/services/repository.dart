import 'package:triller_zone/models/api_response.dart';
import 'package:triller_zone/models/auth_model.dart';
import 'package:triller_zone/services/api_service.dart';
import 'package:triller_zone/services/authentication.dart';

class Repository {
  final ApiService _service = ApiService();
  final AuthService _authService = AuthService();

  //Api Methods
  Future<ApiResponse> getPopularMovies({required int page}) async {
    return await _service.getPopularMovies(page: page);
  }

  //Local Database Methods
  Future<AuthResponse> createUser(AuthInput input) async {
    return await _authService.createUser(input);
  }

  Future<AuthResponse> loginUser(AuthInput input)async{
    return await _authService.loginUser(input);
  }

}
