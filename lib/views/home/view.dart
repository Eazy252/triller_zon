part of 'controller.dart';

class PopularMoviesView
    extends StatelessView<PopularMoviesScreen, PopularMoviesController> {
  const PopularMoviesView(PopularMoviesController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.grey,
          Colors.black,
        ],
      )),
      child: Scaffold(
        backgroundColor: black,
        body: SafeArea(
          child: Padding(
            padding: REdgeInsets.all(16.r),
            child: IndexedStack(
              index: controller.currentIndex,
              children: const [
                // AboutScreen(),
                DiscoverScreen(),
                SearchScreen(),
                BookmarkScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: black,
          elevation: 0,
          child: Container(
            color: black,
            width: double.infinity,
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => controller.toggleIndex(0),
                    child: SvgPicture.asset(
                      controller.currentIndex == 0
                          ? 'assets/icons/home_selected.svg'
                          : 'assets/icons/home_unselected.svg',
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => controller.toggleIndex(1),
                    child: SvgPicture.asset(
                      controller.currentIndex == 1
                          ? 'assets/icons/search_selected.svg'
                          : 'assets/icons/search_unselected.svg',
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => controller.toggleIndex(2),
                    child: SvgPicture.asset(
                      controller.currentIndex == 2
                          ? 'assets/icons/bookmark_selected.svg'
                          : 'assets/icons/bookmark_unselected.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
