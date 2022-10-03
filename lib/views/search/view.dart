part of 'controller.dart';

class SearchView extends StatelessView<SearchScreen, SearchController> {
  const SearchView(SearchController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
          
            children: [
              
              SvgPicture.asset("assets/icons/back-icon.svg"),
              
              ReusableText(text: "Search", fontWeight:,) ],
          )
        ],
      ),
    );
  }
}
