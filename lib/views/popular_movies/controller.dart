import '../../utils/utils.dart';

part 'view.dart';

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({Key? key}) : super(key: key);

  @override
  State<PopularMoviesScreen> createState() => PopularMoviesController();
}

class PopularMoviesController extends State<PopularMoviesScreen> {
  int page = 1;

  func() {
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return PopularMoviesView(this);
  }
}
