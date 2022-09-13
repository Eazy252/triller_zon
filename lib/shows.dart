import 'package:flutter/material.dart';
import 'package:triller_zone/reusables/reusableStrings.dart';
import 'package:triller_zone/reusables/reusabletext.dart';

class Shows extends StatelessWidget {
  const Shows({Key? key}) : super(key: key);

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
                        padding: const EdgeInsets.all(50),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.brown,
                        ),
                        width: 120.0,
                        height: 170,
                      ),
                    ],
                  );
                }),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              ))
        ],
      ),
    )));
  }
}
