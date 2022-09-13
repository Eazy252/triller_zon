// ignore_for_file:jsonnon_constant_identifier_names, non_constant_identifier_names

class MovieModel {
  final bool adult;
  final String backdrop_path,
      original_language,
      original_title,
      overview,
      poster_path,
      release_date,
      title;
  final List<int> genre_ids;
  final int id, vote_average, vote_count;
  final double popularity;

  MovieModel({
    required this.adult,
    required this.backdrop_path,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.poster_path,
    required this.release_date,
    required this.genre_ids,
    required this.id,
    required this.popularity,
    required this.title,
    required this.vote_average,
    required this.vote_count,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        adult: json['adult'],
        backdrop_path: json['backdrop_path'],
        original_language: json['original_language'],
        original_title: json['original_title'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        release_date: json['release_date'],
        genre_ids: json['genre_ids'],
        id: json['id'],
        popularity: json['popularity'],
        title: json['title'],
        vote_average: json['vote_average'],
        vote_count: json['vote_count'],
      );
}
