import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class MovieModel {
  final String name;
  final String description;
  final String bannerurl;
  final String posterurl;
  final String vote;
  final String launchOn;
  final String id;

  MovieModel({
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launchOn,
    required this.id,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      name: json['name'],
      description: json['description'],
      bannerurl: json['bannerurl'],
      posterurl: json['posterurl'],
      vote: json['vote'],
      launchOn: json['launchOn'],
      id: json['id'],
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

    var newResponse = await jsonDecode(response.body);

    var rest = newResponse as List;

    var list = rest.map<MovieModel>((json) => MovieModel.fromJson(json));

    print(list);

    // log(newResponse['results'].toString());
  }
}
