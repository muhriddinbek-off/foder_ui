import 'package:flutter/material.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class BottomCheckWidget extends StatelessWidget {
  final Function()? function;
  const BottomCheckWidget({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      height: 91.h,
      width: width,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColor.shadowColor.withOpacity(0.6),
            blurRadius: 24,
            offset: const Offset(3, 5),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: function,
        child: Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColor.brandPrimaryColor,
            borderRadius: BorderRadius.circular(4.w),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('1 item', style: AppStyle.getTextSmall().copyWith(color: AppColor.whiteColor)),
              Text('Checkout', style: AppStyle.getTextSmall().copyWith(color: AppColor.whiteColor, fontSize: 16.w, fontWeight: FontWeight.w500)),
              Text('Rp 18.500', style: AppStyle.getTextSmall().copyWith(color: AppColor.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}
