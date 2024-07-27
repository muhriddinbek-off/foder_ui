import 'package:foder_ui/utils/app_images.dart';

class ProductModel {
  final String title;
  final String img;
  ProductModel({required this.img, required this.title});
}

List<ProductModel> products = [
  ProductModel(img: AppImages.salad, title: 'Fruit salad mix'),
  ProductModel(img: AppImages.saladMix, title: 'Fruit salad mix chocoMilk'),
  ProductModel(img: AppImages.salad, title: 'Fruit salad mix'),
  ProductModel(img: AppImages.saladMix, title: 'Fruit salad mix chocoMilk'),
];
