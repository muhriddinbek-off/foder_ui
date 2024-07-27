import 'package:foder_ui/utils/app_images.dart';

class FoodsModel {
  final String img;

  FoodsModel({required this.img});
}

List<FoodsModel> foods = [
  FoodsModel(img: AppImages.salad),
  FoodsModel(img: AppImages.saladMix),
  FoodsModel(img: AppImages.salad),
  FoodsModel(img: AppImages.saladMix),
];
