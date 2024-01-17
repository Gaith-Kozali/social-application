import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(ShowTypeChooseState(false));
  bool _visibleValue = false;
  void showTypeChoosePhoto() {
    _visibleValue = !_visibleValue;
    emit(ShowTypeChooseState(_visibleValue));
  }
}
