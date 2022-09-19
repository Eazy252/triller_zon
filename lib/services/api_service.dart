import 'dart:convert';

import '../utils/utils.dart';

class ApiService {
  final String _baseUrl = 'https://api.themoviedb.org/3/movie/popular/';
  final String _apiKey = 'a7c5b8a26c4da2662843534f642ca25d';

  Future<ApiResponse> getPopularMovies({required int page}) async {
    try {
      Response response = await get(
          Uri.parse('$_baseUrl?api_key=$_apiKey&language=en-US&page=$page'));
      if (response.statusCode == 200) {
        var results = await jsonDecode(response.body)['results'] as List;
        List<MovieModel> movies =
            results.map((e) => MovieModel.fromJson(e)).toList();
        print(movies.length);
        return ApiResponse(status: true, movies: movies);
      } else {
        return ApiResponse(status: false, message: 'An Error Occured');
      }
    } catch (e) {
      return ApiResponse(status: false, message: 'An Exception Occured');
    }
  }
}
