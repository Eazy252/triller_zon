

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triller_zone/reusables/reusablesColor.dart';
import 'package:triller_zone/reusables/reusabletext.dart';

import '../../utils/utils.dart';

part 'view.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => DiscoverController();
}

class DiscoverController extends State<DiscoverScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DiscoverView(this);
  }
}
