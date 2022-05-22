import 'package:flutter/material.dart';
import 'package:triller_zone/widgets/mylisttile.dart';
import 'package:triller_zone/widgets/mytextwidget.dart';

Size deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size;
}

Color primaryColor = Colors.blue;

List<MyListTile> myListTile = [
  MyListTile(
    icon: Icons.add,
    text: 'add',
    onPressed: () {},
  ),
  MyListTile(
    icon: Icons.search,
    text: 'search',
    onPressed: () {},
  ),
  MyListTile(
    icon: Icons.person,
    text: 'profile',
    onPressed: () {},
  ),
];

String title = 'Thriller';

List<String> texts = [
  'Trending',
  'New',
  'Top Rated',
];

List<MyTextWidget> tabs = List.generate(
  texts.length,
  (index) => MyTextWidget(
    text: texts[index],
  ),
);
