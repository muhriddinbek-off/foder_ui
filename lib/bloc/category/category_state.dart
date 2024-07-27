part of 'category_bloc.dart';

@immutable
sealed class CategoryState {
  final int tapIndex;
  const CategoryState({required this.tapIndex});
}

final class CategoryInitial extends CategoryState {
  const CategoryInitial({required super.tapIndex});
}
