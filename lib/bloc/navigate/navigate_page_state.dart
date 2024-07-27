part of 'navigate_page_bloc.dart';

@immutable
sealed class NavigatePageState {
  final int tabIndex;
  const NavigatePageState({required this.tabIndex});
}

final class NavigatePageInitial extends NavigatePageState {
  const NavigatePageInitial({required super.tabIndex});
}
