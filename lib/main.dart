import 'package:device_preview/device_preview.dart';
import 'package:triller_zone/services/movieService.dart';
import 'screens/toprated.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:triller_zone/utilities/text.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:flutter/material.dart';
import 'package:triller_zone/screens/calender.dart';
import 'screens/Tv_Shows.dart';
import 'screens/movies.dart';
import 'screens/liveTv.dart';
import 'screens/hd.dart';
import 'screens/discover.dart';
import 'screens/homeView.dart';

import 'screens/homeView.dart';
import 'screens/toprated.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: ' Triller Zone',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String apikey = 'a7c5b8a26c4da2662843534f642ca25d';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2N2FmNWU2MzFkY2JiNGQwOTgxYjA2OTk2ZmNkNDdiYyIsInN1YiI6IjYwNzQ1OTA0ZjkyNTMyMDAyOTFmZDczYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.C_Bkz_T8OybTGo3HfYsESNjN46LBYdw3LHdF-1TzYYs';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  List testmoviesID = [];

  @override
  void initState() {
    super.initState();
    MovieService().getMovies();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();

    //print(trendingresult);

    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();

    //Map topratedresult = await tmdbWithCustomLogs.v3.movies.g

    // Map result = await tmdbWithCustomLogs.v3.movies.getVideos();

    //print(result);

    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    // Future<Map> Function(int movieId) video =
    //     await tmdbWithCustomLogs.v3.movies.getVideos;
    // print(movieId);

    setState(() {
      // testmoviesID = result['results'];

      // print(testmoviesID);

      trendingmovies = trendingresult['results'];

      // print(trendingmovies);

      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            addAutomaticKeepAlives: true,
            padding: EdgeInsets.zero,
            addRepaintBoundaries: true,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Cool triller always',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.explore_rounded),
                title: const Text('Discover'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => discover(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.movie_rounded),
                title: const Text('Movies'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const movies(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.tv_sharp),
                title: const Text('TV Shows'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tv_shows(
                        tv: [],
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.hd_sharp),
                title: const Text('HD'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const hd(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month_sharp),
                title: const Text('Calender'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => calender(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.live_tv_sharp),
                title: const Text('Live TV'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const liveTv(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Styledtext(
            thetext: 'Flutter Movie App ❤️',
            size: 50.0,
            fontWeight: FontWeight.w900,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          children: [
            Tv_shows(tv: tv),
            TrendingMovies(
              trending: trendingmovies,
            ),
            TopRatedMovies(
              toprated: topratedmovies,
            ),
          ],
        ));
  }
}

//videos.results[4].key

