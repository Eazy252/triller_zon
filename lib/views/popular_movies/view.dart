part of 'controller.dart';

class PopularMoviesView
    extends StatelessView<PopularMoviesScreen, PopularMoviesController> {
  const PopularMoviesView(PopularMoviesController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    controller.func();
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.page}'),
      ),
      body: Consumer<MovieProvider>(builder: (context, state, child) {
        return CircularProgressIndicator();
      }),
    );
  }
}
