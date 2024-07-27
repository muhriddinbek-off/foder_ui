import 'package:flutter/material.dart';
import 'package:foder_ui/data/models/foods_models.dart';
import 'package:foder_ui/ui/global_widget/circle_bottom.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class FoodsWidget extends StatelessWidget {
  final FoodsModel food;
  final Function()? function;
  final Function()? onTap;
  const FoodsWidget({
    super.key,
    required this.food,
    required this.function,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.only(right: 16.w),
        padding: EdgeInsets.all(20.w),
        height: 323.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(1.w),
          image: DecorationImage(image: AssetImage(food.img), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleBottomWidget(
              icon: AppIcons.favourite,
              function: onTap,
            ),
            Container(
              padding: EdgeInsets.all(10.w),
              height: 101.h,
              width: 268.w,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(8.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fruit salad mix', style: AppStyle.getTextLarge().copyWith(fontSize: 16.w)),
                  6.getH(),
                  Text(
                    'Delics Fruit salad, Ngasem',
                    style: AppStyle.getTextMedium().copyWith(fontSize: 12.w),
                  ),
                  6.getH(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '18.500',
                            style: AppStyle.getTextSmall().copyWith(color: AppColor.textPrimaryColor),
                          ),
                          12.getW(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                '22.500',
                                style: AppStyle.getTextSmall().copyWith(fontSize: 12.w, color: AppColor.textTertiaryColor),
                              ),
                              Positioned(
                                  child: Container(
                                height: 1.h,
                                width: 38.w,
                                decoration: BoxDecoration(
                                  color: AppColor.textPrimaryColor,
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 28.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          color: AppColor.brandSecondaryColor,
                          borderRadius: BorderRadius.circular(4.w),
                        ),
                        child: Text(
                          '5 Left',
                          style: AppStyle.getTextSmall().copyWith(color: AppColor.whiteColor, fontSize: 12.w),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
