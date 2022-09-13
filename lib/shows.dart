import 'package:flutter/material.dart';

class Shows extends StatelessWidget {
  final List trending;
  const Shows({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
                padding: const EdgeInsets.all(16),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10.0, right: 5.0, top: 5.0),
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: NetworkImage(
                          //     'https://image.tmdb.org/t/p/w500' +
                          //         trending[index]['backdrop_path'],
                          //   ),
                          // ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),

                          color: Colors.brown,
                        ),
                        width: 120.0,
                        height: 170,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    )));
  }
}
