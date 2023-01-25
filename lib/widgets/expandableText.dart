
import 'package:flutter/material.dart';
import 'package:grubhub/widgets/small_text.dart';
import 'package:grubhub/colors.dart' as colors;

import '../utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  //initialize late
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? smallText(size:Dimensions.font16,text: firstHalf,color: colors.AppColors.paraColor,)
            : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  smallText(text: hiddenText?firstHalf + '...' : firstHalf + secondHalf,size: Dimensions.font16,color: colors.AppColors.paraColor,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                        print(firstHalf);

                      });
                    },
                    child: Row(
                      children: [
                        smallText(
                          size: Dimensions.font16,
                          text: hiddenText?"show more":"show less",
                          color: colors.AppColors.mainColor,
                        ),
                        Icon(
                          hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,
                          color: colors.AppColors.mainColor,
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
