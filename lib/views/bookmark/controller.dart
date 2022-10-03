

import '../../utils/utils.dart';
part 'view.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => BookmarkController();
}

class BookmarkController extends State<BookmarkScreen> {
  
  @override
  Widget build(BuildContext context) {
    return BookmarkView(this);
  }
}
