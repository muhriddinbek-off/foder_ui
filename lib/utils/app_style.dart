import 'package:flutter/material.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';

class AppStyle {
  static TextStyle getTextMedium() => TextStyle(
        fontSize: 16.w,
        fontWeight: FontWeight.w400,
        color: AppColor.textSecondaryColor,
      );
  static TextStyle getTextExtraLarge() => TextStyle(
        fontSize: 28.w,
        fontWeight: FontWeight.w600,
        color: AppColor.textPrimaryColor,
      );
  static TextStyle getTextSmall() => TextStyle(
        fontSize: 14.w,
        fontWeight: FontWeight.w400,
        color: AppColor.brandPrimaryColor,
      );
  static TextStyle getTextLarge() => TextStyle(
        fontSize: 24.w,
        fontWeight: FontWeight.w500,
        color: AppColor.textPrimaryColor,
      );
}
