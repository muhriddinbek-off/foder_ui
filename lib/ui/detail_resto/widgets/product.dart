import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/data/models/product_model.dart';
import 'package:foder_ui/ui/global_widget/circle_bottom.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 82.h,
            width: 72.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(product.img)),
            ),
          ),
          20.getW(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 120.w, child: Text(product.title, overflow: TextOverflow.ellipsis, style: AppStyle.getTextLarge().copyWith(fontSize: 16.w))),
                  CircleBottomWidget(function: () {}, icon: AppIcons.favourite),
                ],
              ),
              Row(
                children: [
                  Text('18.500', style: AppStyle.getTextSmall().copyWith(color: AppColor.textPrimaryColor)),
                  12.getW(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Text('22.500', style: AppStyle.getTextSmall().copyWith(fontSize: 12.w, color: AppColor.textTertiaryColor)),
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
              6.getH(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 16.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                      color: AppColor.brandSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '%',
                      style: AppStyle.getTextSmall().copyWith(color: AppColor.whiteColor, fontSize: 12.w),
                    ),
                  ),
                  16.getW(),
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      'Delivery discount up to 3K',
                      overflow: TextOverflow.ellipsis,
                      style: AppStyle.getTextSmall().copyWith(fontSize: 12.w),
                    ),
                  ),
                ],
              ),
              10.getH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(AppIcons.edit),
                  16.getW(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        color: AppColor.textTertiaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: SvgPicture.asset(AppIcons.minus),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.w),
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          '1',
                          style: AppStyle.getTextSmall().copyWith(color: AppColor.textPrimaryColor),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        color: AppColor.brandPrimaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: SvgPicture.asset(AppIcons.plus),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
