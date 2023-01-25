import 'package:flutter/cupertino.dart';
import 'package:grubhub/utils/dimensions.dart';

class bigText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow overflow;
  double size;

  bigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontFamily: 'Roboto'),
    );
  }
}
