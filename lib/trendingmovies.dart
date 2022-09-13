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
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 5.0, top: 5.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  color: Colors.brown,
                ),
                width: 120.0,
                height: 170,
              ),
              ReusableText(text: loading)
            ],
          );
        });

/*     Container(
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
                              color: green,

                               decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        trending[index]["backdrop_path"],
                                  ),
                                ),
                              ) ,
                             
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
   */
  }
}
