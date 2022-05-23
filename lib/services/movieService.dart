import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class MovieModel {
  final String title;
  final String overview;
  final String backdrop_path;
  final String poster_path;
  //final String vote_count;
  final String release_date;
  //final String id;

  MovieModel({
    required this.title,
    required this.overview,
    required this.backdrop_path,
    required this.poster_path,
    //required this.vote_count,
    required this.release_date,
    //required this.id,
  });

  static MovieModel fromJson(Map<String, dynamic> map) {
    return MovieModel(
      title: map['title'],
      overview: map['overview'],
      backdrop_path: map['backdrop_path'],
      poster_path: map['poster_path'],
      // vote_count: map['vote_count'].toString(),
      release_date: map['release_date'],
      //id: map['id'].toString(),
    );
  }
}

class MovieService extends ChangeNotifier {
  String ApiKey = 'a7c5b8a26c4da2662843534f642ca25d';

  getMovies() async {
    List<MovieModel> MovieList = [];

    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/trending/all/day?api_key=$ApiKey'),
    );

    var newResponse = await jsonDecode(response.body)['results'] as List<dynamic>;

    for (var element in newResponse) {
      var finalResult = MovieModel.fromJson(newResponse[element]);
      print(finalResult.title);
    }
    // MovieList.forEach((element) {
    //   print(element.title);
    // });

    //var finalResult = MovieModel.fromJson(newResponse[0]);

    //print(finalResult.title);
  }
}
