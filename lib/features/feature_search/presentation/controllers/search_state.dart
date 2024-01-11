part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class NoSuggestionState extends SearchState {}

class SuggestionState extends SearchState {
  SuggestionState({required this.suggestion});
  List<String> suggestion;
}
