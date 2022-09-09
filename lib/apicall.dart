import 'package:tmdb_api/tmdb_api.dart';
import 'package:triller_zone/homeScreen.dart';

class Apicall {
  List trendingMovies = [];
  String apikey = "a7c5b8a26c4da2662843534f642ca25d";
  String readaccesstokin =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhN2M1YjhhMjZjNGRhMjY2Mjg0MzUzNGY2NDJjYTI1ZCIsInN1YiI6IjYyNzNhNzkzMTYyYmMzMTdhYTM4NjE1NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JW_UBTjNUEIvD6brMCWrWKtIo7lLtXlRhs28_8adDC8';

  loadMovies() async {
    TMDB tmdbcall = TMDB(ApiKeys(apikey, readaccesstokin));
    logConfig:
    const ConfigLogger(showLogs: true, showErrorLogs: true);

    Map trendingresults = await tmdbcall.v3.trending.getTrending();

    print(trendingresults);
  }
}
