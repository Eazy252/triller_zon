import 'package:flutter/material.dart';
import 'package:triller_zone/utilities/text.dart';

import '../description.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({required this.toprated});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styledtext(
            thetext: 'Top Rated Movies',
            size: 30,
          ),
          SizedBox(height: 10),
          Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toprated.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      child: InkWell(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500' +
                                          toprated[index]['poster_path']),
                                ),
                              ),
                              height: 200,
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Styledtext(
                                  size: 15,
                                  thetext: toprated[index]['title'] != null
                                      ? toprated[index]['title']
                                      : 'Loading'),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description(
                                    // id: toprated[index]['id'] ,
                                        name: toprated[index]['title'] ??
                                            'loading',
                                        bannerurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                toprated[index]
                                                    ['backdrop_path'],
                                        posterurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                toprated[index]['poster_path'],
                                        description: toprated[index]
                                            ['overview'],
                                        vote: toprated[index]['vote_average']
                                            .toString(),
                                        launch_on: toprated[index]
                                            ['release_date'],
                                      )));
                        },
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
