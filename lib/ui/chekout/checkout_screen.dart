import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/data/models/product_model.dart';
import 'package:foder_ui/ui/chekout/widgets/bottom_order.dart';
import 'package:foder_ui/ui/chekout/widgets/deliver.dart';
import 'package:foder_ui/ui/chekout/widgets/switch.dart';
import 'package:foder_ui/ui/detail_resto/widgets/product.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 70.h,
        backgroundColor: AppColor.whiteColor,
        title: Text('Checkout', style: AppStyle.getTextLarge()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              const SwitchWidget(),
              18.getH(),
              const DeliverToWidget(),
              18.getH(),
              Container(
                padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
                height: 208.h,
                width: 345.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(4.w),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Bucket', style: AppStyle.getTextLarge().copyWith(fontSize: 22.w)),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.plus,
                              colorFilter: ColorFilter.mode(AppColor.brandPrimaryColor, BlendMode.srcIn),
                              height: 10.h,
                            ),
                            8.getW(),
                            Text('Add items', style: AppStyle.getTextSmall()),
                          ],
                        )
                      ],
                    ),
                    ProductWidget(product: products[0]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomOrderWidget(function: () {}),
    );
  }
}
