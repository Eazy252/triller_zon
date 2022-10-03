part of 'controller.dart';

class SearchView extends StatelessView<SearchScreen, SearchController> {
  const SearchView(SearchController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/back-icon.svg"),
            SizedBox(
              width: 30.h,
            ),
            ReusableText(
              text: "Search",
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
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.vertical()),
        )
      ],
    );
  }
}
