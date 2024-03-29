import 'package:triller_zone/services/repository.dart';

import '../utils/utils.dart';

class MovieProvider extends ChangeNotifier {
  MovieProvider._privateConstructor();

  static final MovieProvider instance = MovieProvider._privateConstructor();

  final Repository _repository = Repository();
  List<MovieModel> _movies = [];
  List<MovieModel> get movies => _movies;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  getMovies({required int page}) async {
    _isLoading = !_isLoading;
    notifyListeners();
    ApiResponse response = await _repository.getPopularMovies(page: page);
    response.status ? _movies = response.movies! : null;
    _isLoading = !_isLoading;
    notifyListeners();
  }
}
