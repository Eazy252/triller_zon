import 'package:flutter/material.dart';
import 'package:triller_zone/reusables/doubles.dart';
import 'package:triller_zone/reusables/reusableStrings.dart';
import 'package:triller_zone/reusables/reusablesColor.dart';
import 'package:triller_zone/reusables/reusabletext.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ReusableText(
              text: screenHeader,
              color: black,
              size: homeTextSize,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 270.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        width: 140,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        trending[index]["backdrop_path"],
                                  ),
                                ),
                              ),
                            ),
                            ReusableText(
                                text: trending[index]['title'] ?? loading)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
