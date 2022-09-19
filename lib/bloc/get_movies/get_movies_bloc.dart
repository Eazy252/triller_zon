import 'package:triller_zone/services/repository.dart';

import '../../utils/utils.dart';

part 'get_movies_event.dart';
part 'get_movies_state.dart';

class GetMoviesBloc extends Bloc<GetMoviesEvent, GetMoviesState> {
  GetMoviesBloc() : super(GetMoviesLoading()) {
    on<GetPopularMovies>((event, emit) => _getPopularMovies(event, emit));
  }

  _getPopularMovies(GetPopularMovies event, emit) async {
    emit(GetMoviesLoading());
    ApiResponse response =
        await Repository().getPopularMovies(page: event.page);
    response.status
        ? emit(GetMoviesLoaded(movies: response.movies))
        : emit(GetMoviesError(message: response.message));
  }
}
