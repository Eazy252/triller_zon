

import 'package:flutter_svg/flutter_svg.dart';
import 'package:triller_zone/reusables/reusabletext.dart';

import '../../utils/utils.dart';

part 'view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => SearchController();
}

class SearchController extends State<SearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SearchView(this);
  }
}
