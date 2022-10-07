part of 'controller.dart';

class SearchView extends StatelessView<SearchScreen, SearchController> {
  const SearchView(SearchController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/back-icon.svg"),
            SizedBox(
              width: 30.h,
            ),
            ReusableText(
              text: "Search.",
              fontWeight: FontWeight.w700,
              size: 30.sp,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        TextField(
            decoration: InputDecoration(
          focusColor: white.withOpacity(0.9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
          fillColor: grey,
          icon: SvgPicture.asset("assets/icons/search_unselected.svg"),
          hintText: "Search",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: white.withOpacity(0.2),
          ),
        )),
        SizedBox(
          height: 20.h,
        ),

        Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  backgroundColor: grey,
                  label: ReusableText(
                    text: "All",
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: white,
                  ),
                ),
                Chip(
                  backgroundColor: grey,
                  label: ReusableText(
                    text: "Animation(0)",
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: white,
                  ),
                ),
                Chip(
                  backgroundColor: yellow,
                  label: ReusableText(
                    text: "Actions(3)",
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: white,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 32.h,
        ),
        //const DiscoveryMovieCardVertical(),

        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 170,
                crossAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const DiscoveryMovieCardVertical();
              }),
        )
      ],
    );
  }
}

class DiscoveryMovieCardVertical extends StatelessWidget {
  const DiscoveryMovieCardVertical({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 182.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset('assets/images/tor.jpg'),
              ),
              Positioned(
                top: 5.h,
                left: 16.w,
                right: -149.w,
                child: SvgPicture.asset("assets/icons/bookmark_unselected.svg"),
              ),
            ],
          ),
          ReusableText(
            text: 'Hitman\'s Wife\'s\nBodyguard',
            size: 12.sp,
            fontWeight: FontWeight.w700,
          ),
          Row(
            children: [
              ReusableText(
                text: '3.5',
                size: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 15.w),
              Icon(
                Icons.star,
                color: yellow,
              ),
              SizedBox(height: 26.h),
            ],
          ),
          //SizedBox(height: 26.h),
        ],
      ),
    );
  }
}
