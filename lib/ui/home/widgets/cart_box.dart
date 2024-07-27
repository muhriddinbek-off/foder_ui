import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/data/models/box_cart.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class CartBox extends StatelessWidget {
  final BoxCartModel cartModel;
  const CartBox({super.key, required this.cartModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.w),
          width: 74.w,
          height: 74.h,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(8.w),
          ),
          child: SvgPicture.asset(cartModel.img),
        ),
        4.getH(),
        Text(
          cartModel.title,
          style: AppStyle.getTextMedium().copyWith(fontWeight: FontWeight.w500, fontSize: 15.w),
        )
      ],
    );
  }
}
