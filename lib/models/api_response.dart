import 'package:triller_zone/models/movie_model.dart';

class ApiResponse {
  final bool status;
  List<MovieModel>? movies;
  String? message;

  ApiResponse({
    required this.status,
    this.message,
    this.movies,
  });
}
