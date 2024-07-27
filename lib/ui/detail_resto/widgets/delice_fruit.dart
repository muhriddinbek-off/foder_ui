import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/ui/global_widget/circle_bottom.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_images.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class DeliceFruitWidget extends StatelessWidget {
  final Function()? function;
  const DeliceFruitWidget({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20.w, top: 80.h, right: 20.w),
          height: 273.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.cafeRoom,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleBottomWidget(function: function, icon: AppIcons.arrowBack),
              CircleBottomWidget(function: () {}, icon: AppIcons.favourite),
            ],
          ),
        ),
        Positioned(
          bottom: -100.h,
          child: Container(
            height: 168.h,
            width: 345.w,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(8.w),
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  color: AppColor.shadowColor.withOpacity(0.16),
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.w),
              child: Column(
                children: [
                  Text('Delics Fruit Salad', style: AppStyle.getTextLarge().copyWith(fontSize: 18.w)),
                  4.getH(),
                  Text('Jl. Jaya katwang no 4, Ngasem', style: AppStyle.getTextMedium()),
                  6.getH(),
                  RichText(
                    text: TextSpan(
                      text: 'Open ',
                      style: AppStyle.getTextLarge().copyWith(fontSize: 14.w),
                      children: [
                        TextSpan(
                          text: ' 8 am - 8 pm',
                          style: AppStyle.getTextMedium().copyWith(fontSize: 14.w),
                        ),
                      ],
                    ),
                  ),
                  18.getH(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.location),
                          4.getW(),
                          Text('1km', style: AppStyle.getTextMedium().copyWith(fontSize: 12.w, color: AppColor.textPrimaryColor)),
                        ],
                      ),
                      16.getW(),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.star),
                          4.getW(),
                          Text('5.0', style: AppStyle.getTextMedium().copyWith(fontSize: 12.w, color: AppColor.textPrimaryColor)),
                        ],
                      ),
                      16.getW(),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.verified),
                          4.getW(),
                          Text('Verified', style: AppStyle.getTextMedium().copyWith(fontSize: 12.w, color: AppColor.textPrimaryColor)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
