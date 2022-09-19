part of 'get_movies_bloc.dart';

abstract class GetMoviesEvent extends Equatable {
  const GetMoviesEvent();

  @override
  List<Object> get props => [];
}

class GetPopularMovies extends GetMoviesEvent {
  final int page;

  const GetPopularMovies({required this.page});

  @override
  List<Object> get props => [page];
}
