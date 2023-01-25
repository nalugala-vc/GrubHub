import 'package:flutter/cupertino.dart';
import 'package:grubhub/utils/dimensions.dart';
import 'package:grubhub/widgets/small_text.dart';

class iconText extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  iconText({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: Dimensions.icon24,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        smallText(
          text: text,
        )
      ],
    );
  }
}
