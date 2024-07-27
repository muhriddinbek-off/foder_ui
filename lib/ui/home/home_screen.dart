import 'package:flutter/material.dart';
import 'package:foder_ui/data/models/box_cart.dart';
import 'package:foder_ui/data/models/foods_models.dart';
import 'package:foder_ui/ui/home/widgets/appbar_widget.dart';
import 'package:foder_ui/ui/home/widgets/cart_box.dart';
import 'package:foder_ui/ui/home/widgets/foods.dart';
import 'package:foder_ui/ui/routes.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.getH(),
              const AppbarWidget(),
              15.getH(),
              Text('Hello, Yahya', style: AppStyle.getTextExtraLarge()),
              4.getH(),
              Text('What do you want to eat?', style: AppStyle.getTextMedium()),
              18.getH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(carts.length, (index) {
                  return CartBox(cartModel: carts[index]);
                }),
              ),
              10.getH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today’s promo', style: AppStyle.getTextLarge()),
                  Text('See all', style: AppStyle.getTextSmall()),
                ],
              ),
              16.getH(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(foods.length, (index) {
                    return FoodsWidget(
                      food: foods[index],
                      function: () => Navigator.pushNamed(context, RouteNames.detailRestoScreen),
                      onTap: () {},
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
