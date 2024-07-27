part of 'category_bloc.dart';

@immutable
sealed class CategoryEvent {}

class TapCategoryChange extends CategoryEvent {
  final int tapIndex;
  TapCategoryChange({required this.tapIndex});
}
