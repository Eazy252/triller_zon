import 'package:flutter/material.dart';
import '../description.dart';
import '../utilities/text.dart';

class Tv_shows extends StatelessWidget {
  final List tv;


  const Tv_shows({required this.tv});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styledtext(
            thetext: 'Popular TV Shows',
            size: 30,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          Container(
              // color: Colors.red,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tv.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(5),
                      // color: Colors.green,
                      width: 250,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description(
                                    // id: tv[index]['id'] ?? " ",
                                        name: tv[index]['title'] ?? 'loading',
                                        bannerurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                tv[index]['backdrop_path'],
                                        posterurl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                tv[index]['poster_path'],
                                        description: tv[index]['overview'],
                                        vote: tv[index]['vote_average']
                                            .toString(),
                                        launch_on:
                                            tv[index]['release_date'] ?? " ",
                                      )));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            tv[index]['backdrop_path']),
                                    fit: BoxFit.cover),
                              ),
                              height: 140,
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Styledtext(
                                size: 30,
                                thetext: tv[index]['original_name'] ?? ' ',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
