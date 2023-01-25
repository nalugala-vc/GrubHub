import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grubhub/utils/dimensions.dart';
import 'package:grubhub/widgets/appColumn.dart';
import 'package:grubhub/widgets/appIcon.dart';
import 'package:grubhub/colors.dart' as colors;
import 'package:grubhub/widgets/expandableText.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodDetailImg,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                ),


          )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.height20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ],
          )),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodDetailImg-20,
              child: Container(
                
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Chinese Side",),
                    SizedBox(height: Dimensions.height30,),
                    bigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: "Lorem ipsum dolor sit amet, consectetur "
                          "adipiscing elit. Sed auctor, magna vel tincidunt pretium, risus "
                          "magna tincidunt libero, at congue risus velit id risus. Sed auctor, "
                          "magna vel tincidunt pretium, risus magna tincidunt libero, at congue "
                          "risus velit id risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                          "Sed auctor, magna vel tincidunt pretium, risus magna tincidunt libero, at congue "
                          "risus velit id risus. Sed auctor, magna vel tincidunt pretium, "),
                    )),
                  ],
                ),

          ))
        ],
      ),
      bottomNavigationBar:
      Container(
        height: Dimensions.bottomNavBarHeight,
        padding: EdgeInsets.only(top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: colors.AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,
                bottom: Dimensions.height20,
              right: Dimensions.width20,left: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: colors.AppColors.signColor,
                  ),
                  SizedBox(width: Dimensions.width5,),
                  bigText(text: "0"),
                  SizedBox(width: Dimensions.width5,),
                  Icon(
                    Icons.add,
                    color: colors.AppColors.signColor,
                  ),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: colors.AppColors.mainColor,
              ),
              child: Row(
                children: [
                  //price
                  bigText(text: "\$0.00",color: Colors.white,),
                  SizedBox(width: Dimensions.width5,),
                  bigText(text: "Add to cart",color: Colors.white,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
