import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triller_zone/reusables/reusablesColor.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.fontWeight,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: color ?? white,
        ),
      ),
    );
  }
}
