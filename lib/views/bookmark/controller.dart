

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../reusables/reusablesColor.dart';
import '../../reusables/reusabletext.dart';
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
