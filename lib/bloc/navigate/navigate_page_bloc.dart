import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigate_page_event.dart';
part 'navigate_page_state.dart';

class NavigatePageBloc extends Bloc<NavigatePageEvent, NavigatePageState> {
  NavigatePageBloc() : super(const NavigatePageInitial(tabIndex: 0)) {
    on<NavigatePageEvent>((event, emit) {
      if (event is TabChange) {
        emit(NavigatePageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
