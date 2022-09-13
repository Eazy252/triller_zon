import 'package:triller_zone/models/api_response.dart';
import 'package:triller_zone/services/repository.dart';

import '../utils/utils.dart';

class MovieProvider extends ChangeNotifier {
  final Repository _repository = Repository();
  List<MovieModel> _movies = [];

  List<MovieModel> get movies => _movies;

  getMovies({required int page}) async {
    ApiResponse response = await _repository.getPopularMovies(page: page);
    response.status ? _movies = response.movies! : null;
    notifyListeners();
  }
}
