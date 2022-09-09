import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({Key? key, required this.text, this.color, this.size})
      : super(key: key);
  final String text;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
