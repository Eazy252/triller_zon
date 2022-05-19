import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:triller_zone/main.dart';

class DescriptionOfMovieAndMoreSuggestion extends StatefulWidget {
  const DescriptionOfMovieAndMoreSuggestion({Key? key}) : super(key: key);

  @override
  State<DescriptionOfMovieAndMoreSuggestion> createState() =>
      _DescriptionOfMovieAndMoreSuggestionState();
}

class _DescriptionOfMovieAndMoreSuggestionState
    extends State<DescriptionOfMovieAndMoreSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        toolbarHeight: 35.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Icon(
                      Icons.movie_outlined,
                      color: Colors.yellow,
                      size: 200,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    child: Container(
                      height: 20,
                      child: Icon(Icons.stacked_bar_chart_outlined),
                    )),
                Positioned(
                    bottom: 20.0,
                    right: 20.0,
                    child: Container(
                      height: 20,
                      child: Text('movies that are relased are always new'),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'a very long stuff about the movie will be displayed here or a littele caption of the movie will be displayed here',
                  style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              width: 50.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(
                      child: Icon(
                    Icons.movie_filter_sharp,
                    size: 50,
                    color: Colors.black,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
