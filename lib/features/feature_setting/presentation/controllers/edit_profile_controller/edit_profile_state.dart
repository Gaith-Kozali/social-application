part of 'edit_profile_cubit.dart';

@immutable
abstract class EditProfileState {}

class EditProfileInitial extends EditProfileState {}

class ShowTypeChooseState extends EditProfileState {
  ShowTypeChooseState(this.visibleValue);
  bool visibleValue;
}
