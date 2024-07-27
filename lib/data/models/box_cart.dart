import 'package:foder_ui/utils/app_icons.dart';

class BoxCartModel {
  final String img;
  final String title;
  BoxCartModel({
    required this.img,
    required this.title,
  });
}

List<BoxCartModel> carts = [
  BoxCartModel(img: AppIcons.favourite, title: 'Favourite'),
  BoxCartModel(img: AppIcons.cheap, title: 'Cheap'),
  BoxCartModel(img: AppIcons.trend, title: 'Trend'),
  BoxCartModel(img: AppIcons.more, title: 'More'),
];
