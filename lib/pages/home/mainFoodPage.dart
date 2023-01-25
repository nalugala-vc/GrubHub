import 'package:flutter/material.dart';
import 'package:grubhub/colors.dart' as colors;
import 'package:grubhub/pages/home/foodPageBody.dart';
import 'package:grubhub/utils/dimensions.dart';
import 'package:grubhub/widgets/big_text.dart';
import 'package:grubhub/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    bigText(
                      text: "Bangladesh",
                      color: colors.AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        smallText(
                          text: "Nairobi",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: colors.AppColors.mainColor),
                    child: Icon(
                      Icons.search,
                      size: Dimensions.icon24,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
