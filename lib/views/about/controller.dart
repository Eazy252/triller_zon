
import 'dart:ui';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triller_zone/reusables/reusablesColor.dart';

import '../../reusables/reusabletext.dart';
import '../../utils/utils.dart';

part 'view.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => AboutController();
}

class AboutController extends State<AboutScreen> {
  
  @override
  Widget build(BuildContext context) {
    return AboutView(this);
  }
}
