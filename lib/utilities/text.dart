import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styledtext extends StatelessWidget {
  final String thetext;
  Color? color;
  double? size;
  FontWeight? fontWeight;

  Styledtext({Key? key, required this.thetext, this.color, this.size, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      thetext,
      style: GoogleFonts.adventPro(
        color: Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
