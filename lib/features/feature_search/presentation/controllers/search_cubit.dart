import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(NoSuggestionState());
  List<String> suggestions = [];
  void suggestionFunc(String text, List<String> information) {
    if (text.isNotEmpty) {
      suggestions = information.where((element) {
        return element.contains(text.toLowerCase());
      }).toList();
      emit(SuggestionState(suggestion: suggestions));
    } else {
      suggestions = [];
      emit(NoSuggestionState());
    }
  }
}
