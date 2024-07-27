import 'package:flutter/material.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80.h,
      width: 345.w,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: SwitchListTile(
        activeTrackColor: AppColor.fFEFF2,
        activeColor: AppColor.brandPrimaryColor,
        title: Text(
          'Keep social distancing',
          style: AppStyle.getTextLarge().copyWith(fontSize: 16.w),
        ),
        subtitle: Text(
          'Leave your order on the doorstep',
          style: AppStyle.getTextSmall().copyWith(color: AppColor.textSecondaryColor),
        ),
        value: true,
        onChanged: (value) {},
      ),
    );
  }
}
