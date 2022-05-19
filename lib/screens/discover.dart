import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:triller_zone/stack.dart';

class discover extends StatefulWidget {
  @override
  State<discover> createState() => _discoverState();
}

class _discoverState extends State<discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 300,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  
                  color: Colors.amber,
                  child: GestureDetector(
                    child: Image.asset(
                      'images/image.png',
                      fit: BoxFit.cover,
                    ),
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DescriptionOfMovieAndMoreSuggestion()));
                    }),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
