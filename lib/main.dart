import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  List trendingMovies = [];
  String apikey = 'a7c5b8a26c4da2662843534f642ca25d';
  String readaccesstokin =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhN2M1YjhhMjZjNGRhMjY2Mjg0MzUzNGY2NDJjYTI1ZCIsInN1YiI6IjYyNzNhNzkzMTYyYmMzMTdhYTM4NjE1NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JW_UBTjNUEIvD6brMCWrWKtIo7lLtXlRhs28_8adDC8';

  loadMovies() async {
    TMDB tmdbcall = TMDB(apikey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cool movies always"),
      ),
    );
  }
}
