import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grubhub/colors.dart' as colors;
import 'package:grubhub/widgets/big_text.dart';
import 'package:grubhub/widgets/expandableText.dart';

import '../../utils/dimensions.dart';
import '../../widgets/appIcon.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height5,bottom: Dimensions.height10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  )
                ),
                child: Center(child: bigText(
                    text:"Creole Rice Side Dish Receipe"
                ),),
                width: double.maxFinite,
              )
            ),
            backgroundColor: colors.AppColors.yellowColor,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food0.png",
                  width:double.maxFinite,//takes the max width
                  fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text: "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet,"
                        " consectetur Lorem ipsum dolor sit a Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur"
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                        "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur "
                    ,
                  ),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(

        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(left: Dimensions.width20*2.5,right: Dimensions.width20*2.5,top: Dimensions.width10,bottom: Dimensions.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: colors.AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.icon24,),
                bigText(text: "\$12.88"+" "+ "X"+" " + "0",color: colors.AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: colors.AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.icon24,)
              ],
            ),
          ),
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
                  child: Icon(
                    Icons.favorite,
                    color: colors.AppColors.mainColor

                    ,
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
          )
        ],
      ),
    );
  }
}
