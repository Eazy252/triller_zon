import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../reusables/reusablesColor.dart';
import '../../reusables/reusabletext.dart';
import '../../utils/utils.dart';
part 'view.dart';

class SeeMoreScreen extends StatefulWidget {
  const SeeMoreScreen({Key? key}) : super(key: key);

  @override
  State<SeeMoreScreen> createState() => SeeMoreController();
}

class SeeMoreController extends State<SeeMoreScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SeeMoreView(this);
  }
}
