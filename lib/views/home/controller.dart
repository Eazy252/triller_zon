import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triller_zone/reusables/reusablesColor.dart';
import 'package:triller_zone/views/about/controller.dart';
import 'package:triller_zone/views/bookmark/controller.dart';
import 'package:triller_zone/views/discover/controller.dart';
import 'package:triller_zone/views/search/controller.dart';

import '../../utils/utils.dart';

part 'view.dart';

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({Key? key}) : super(key: key);

  @override
  State<PopularMoviesScreen> createState() => PopularMoviesController();
}

class PopularMoviesController extends State<PopularMoviesScreen> {
  int page = 1;

  int currentIndex = 0;

  toggleIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    context.read<GetMoviesBloc>().add(GetPopularMovies(page: page));
    super.initState();
  }

  getMoviesError(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  refreshMovies() {
    context.read<GetMoviesBloc>().add(GetPopularMovies(page: page));
  }

  @override
  Widget build(BuildContext context) {
    return PopularMoviesView(this);
  }
}
