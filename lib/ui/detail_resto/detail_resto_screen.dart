import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foder_ui/bloc/category/category_bloc.dart';
import 'package:foder_ui/data/models/category.dart';
import 'package:foder_ui/data/models/product_model.dart';
import 'package:foder_ui/ui/detail_resto/widgets/bottom_check.dart';
import 'package:foder_ui/ui/detail_resto/widgets/delice_fruit.dart';
import 'package:foder_ui/ui/detail_resto/widgets/product.dart';
import 'package:foder_ui/ui/routes.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_size.dart';
import 'package:foder_ui/utils/app_style.dart';

class DetailRestoScreen extends StatefulWidget {
  const DetailRestoScreen({super.key});

  @override
  State<DetailRestoScreen> createState() => _DetailRestoScreenState();
}

class _DetailRestoScreenState extends State<DetailRestoScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          DeliceFruitWidget(function: () => Navigator.pop(context)),
          130.getH(),
          Container(
            color: AppColor.whiteColor,
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(categories.length, (index) {
                      return GestureDetector(
                        onTap: () => context.read<CategoryBloc>().add(TapCategoryChange(tapIndex: index)),
                        child: Column(
                          children: [
                            Text(
                              categories[index].title,
                              style: AppStyle.getTextLarge().copyWith(fontSize: 18.w, color: index == state.tapIndex ? AppColor.textPrimaryColor : AppColor.textSecondaryColor),
                            ),
                            6.getH(),
                            Container(
                              height: 4.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: index == state.tapIndex ? AppColor.brandPrimaryColor : Colors.transparent,
                                borderRadius: BorderRadius.circular(20.w),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  );
                }),
                20.getH(),
                ...List.generate(products.length, (index) {
                  return ProductWidget(product: products[index]);
                }),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomCheckWidget(function: () {
        Navigator.pushNamed(context, RouteNames.checkoutScreen);
      }),
    );
  }
}
