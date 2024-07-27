import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 36.h,
          width: 238.w,
          decoration: BoxDecoration(
            color: AppColor.e84C4F.withOpacity(0.08),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Jl . Jayakatwang no 301', style: AppStyle.getTextMedium()),
              SvgPicture.asset(AppIcons.arrowBottom, height: 16.h),
            ],
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.all(8.h),
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                color: AppColor.brandPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                AppIcons.notifacation,
              ),
            ),
            Positioned(
                bottom: -3.h,
                right: -3.w,
                child: Container(
                  height: 14.h,
                  width: 14.w,
                  decoration: BoxDecoration(
                    color: AppColor.brandSecondaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.w, color: AppColor.backgroundColor),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
