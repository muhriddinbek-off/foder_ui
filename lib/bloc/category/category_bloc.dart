import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial(tapIndex: 0)) {
    on<CategoryEvent>((event, emit) {
      if (event is TapCategoryChange) {
        emit(CategoryInitial(tapIndex: event.tapIndex));
      }
    });
  }
}
