import '../../utils/utils.dart';

part 'view.dart';

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({Key? key}) : super(key: key);

  @override
  State<PopularMoviesScreen> createState() => PopularMoviesController();
}

class PopularMoviesController extends State<PopularMoviesScreen> {
  int page = 1;

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
