import 'package:flutter/cupertino.dart';

class smallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;

  smallText(
      {super.key,
      required this.text,
      this.color = const Color(0xFFccc7c5),
      this.size = 12,
      this.height = 1.7});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto', fontSize: size, height: height, color: color),
    );
  }
}
