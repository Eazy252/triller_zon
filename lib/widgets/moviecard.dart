import 'package:flutter/material.dart';
import 'package:triller_zone/widgets/mytextwidget.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.width}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        child: Column(
          children: const [
            Center(
              child: FlutterLogo(),
            ),
            MyTextWidget(text: 'MovieTitle')
          ],
        ),
      ),
    );
  }
}
