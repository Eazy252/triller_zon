import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:triller_zone/services/apicall.dart';

import 'package:flutter/material.dart';

import '../utilities/text.dart';
import 'Tv_Shows.dart';
import 'calender.dart';
import 'discover.dart';
import 'hd.dart';
import 'liveTv.dart';
import 'movies.dart';
import 'toprated.dart';
import 'trendingmovies.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
            // size: 50.0,
            fontWeight: FontWeight.w900,
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Tv_shows(tv: tv),
            // TrendingMovies(
            //   trending: trendingmovies,
            // ),
            // TopRatedMovies(
            //   toprated: topratedmovies,
            // ),
          ],
        ));
  }
}
