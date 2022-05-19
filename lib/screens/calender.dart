import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class calender extends StatefulWidget {
  const calender({Key? key}) : super(key: key);

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Container(
          child: VerticalCardPager(titles: titles, images: images),
        ),
      ),
    );
  }
}

final List<String> titles = [
  "RED",
  "YELLOW",
  "BLACK",
  "CYAN",
  "BLUE",
  "GREY",
  "BLACK",
  "RED",
  "CYAN",
  "BLUE",
];

final List<Widget> images = [
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.yellow,
  ),
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.cyan,
  ),
  Container(
    color: Colors.blue,
  ),
  Container(
    color: Colors.grey,
  ),
  Container(
    color: Colors.cyan,
  ),
  Container(
    color: Colors.yellow,
  ),
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.red,
  ),
];
