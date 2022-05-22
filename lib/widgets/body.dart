import 'package:flutter/material.dart';
import 'package:triller_zone/utils/constants.dart';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = deviceWidth(context);
    return TabBarView(
      children: List.generate(
        tabs.length,
        (index) => Center(
          child: tabs[index],
        ),
      ),
    );
  }
}
