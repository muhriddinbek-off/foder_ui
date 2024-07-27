import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';

class CircleBottomWidget extends StatelessWidget {
  final String icon;
  final Function()? function;
  const CircleBottomWidget({
    super.key,
    required this.function,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(6.w),
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColor.shadowColor.withOpacity(0.3),
              blurRadius: 24,
            )
          ],
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
