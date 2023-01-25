import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grubhub/colors.dart' as colors;
import 'package:grubhub/widgets/small_text.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bigText(text: text,size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: colors.AppColors.mainColor,
                    size: 15,
                  )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            smallText(text: '4.8'),
            SizedBox(
              width: Dimensions.width10,
            ),
            smallText(text: '12345'),
            SizedBox(
              width: Dimensions.width5,
            ),
            smallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconText(
              icon: Icons.circle,
              iconColor: colors.AppColors.iconColor1,
              text: 'Normal',
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            iconText(
                icon: Icons.location_pin,
                iconColor: colors.AppColors.mainColor,
                text: "1.7km"),
            SizedBox(
              width: Dimensions.width10,
            ),
            iconText(
                icon: Icons.access_time_rounded,
                iconColor: colors.AppColors.iconColor2,
                text: '32min')
          ],
        )
      ],
    );
  }
}
