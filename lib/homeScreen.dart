import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:triller_zone/reusables/reusableStrings.dart';
import 'package:triller_zone/trendingmovies.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List trendingMovies = [];
  List tvTopRatted = [];
  List topRatted = [];

  String apikey = "a7c5b8a26c4da2662843534f642ca25d";
  String readaccesstokin =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhN2M1YjhhMjZjNGRhMjY2Mjg0MzUzNGY2NDJjYTI1ZCIsInN1YiI6IjYyNzNhNzkzMTYyYmMzMTdhYTM4NjE1NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JW_UBTjNUEIvD6brMCWrWKtIo7lLtXlRhs28_8adDC8';

  loadMovies() async {
    TMDB tmdbcall = TMDB(ApiKeys(apikey, readaccesstokin));
    logConfig:
    const ConfigLogger(showLogs: true, showErrorLogs: true);

    Map trendinMoviesgResults = await tmdbcall.v3.trending.getTrending();
    Map tvTopRattedResults = await tmdbcall.v3.movies.getPopular();
    Map topRattedResults = await tmdbcall.v3.tv.getPopular();

    setState(() {
      trendingMovies = trendinMoviesgResults['results'];
      tvTopRatted = tvTopRattedResults['results'];
      topRatted = topRattedResults['results'];
    });

    print(trendingMovies);
  }

  void initState() {
    loadMovies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(theAppName),
      ),
      body: ListView(
        children: [
          Expanded(
            child: TrendingMovies(trending: trendingMovies),
          )
        ],
      ),
    );
  }
}
