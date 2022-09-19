part of 'controller.dart';

class PopularMoviesView
    extends StatelessView<PopularMoviesScreen, PopularMoviesController> {
  const PopularMoviesView(PopularMoviesController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
      ),
      body: BlocConsumer<GetMoviesBloc, GetMoviesState>(
        listener: (context, state) {
          if (state is GetMoviesError) {
            controller.getMoviesError(state.message!);
          }
        },
        builder: (context, state) {
          if (state is GetMoviesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GetMoviesLoaded) {
            return ListView.builder(
              itemCount: state.movies!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  state.movies![index].title.toString(),
                ),
              ),
            );
          }
          return Center(
            child: ElevatedButton(
              onPressed: () => controller.refreshMovies(),
              child: const Text('Refresh'),
            ),
          );
        },
      ),
    );
  }
}
