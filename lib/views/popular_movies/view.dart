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
                scrollDirection: Axis.horizontal,
                itemCount: state.movies!.length,
                itemBuilder: (context, index) => Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: (() {}),
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 5.0, top: 5.0),
                              height: 270,
                              width: 150,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            'https://image.tmdb.org/t/p/w500' +
                                                state.movies![index].posterPath
                                                    .toString()),
                                  ),
                                  Expanded(
                                    child: Text(
                                        state.movies![index].title.toString()),
                                  )
                                ],
                              )
                              //

                              ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                //     ListTile(
                //   title: Text(
                //     state.movies![index].title.toString(),
                //   ),
                // ),
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
