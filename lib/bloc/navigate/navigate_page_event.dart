part of 'navigate_page_bloc.dart';

@immutable
sealed class NavigatePageEvent {}

class TabChange extends NavigatePageEvent {
  final int tabIndex;
  TabChange({required this.tabIndex});
}
