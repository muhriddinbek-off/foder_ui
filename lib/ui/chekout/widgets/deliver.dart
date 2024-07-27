import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class DeliverToWidget extends StatelessWidget {
  const DeliverToWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      height: 136.h,
      width: 345.w,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deliver to',
                    style: AppStyle.getTextLarge().copyWith(fontSize: 14.w, color: AppColor.textSecondaryColor),
                  ),
                  4.getH(),
                  Text(
                    'Jl. Jayakatwang no 301',
                    style: AppStyle.getTextLarge().copyWith(fontSize: 16.w),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(6.h),
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.w, color: AppColor.brandPrimaryColor),
                ),
                child: Container(
                  height: 16.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                    color: AppColor.brandPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 40.h,
            width: 313.w,
            decoration: BoxDecoration(
              color: AppColor.fFEFF2,
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.note),
                10.getW(),
                Text('Add a note of delivery address', style: AppStyle.getTextSmall().copyWith(color: AppColor.textSecondaryColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
