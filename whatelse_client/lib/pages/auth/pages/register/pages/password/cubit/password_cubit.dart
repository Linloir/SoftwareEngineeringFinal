import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/model/password.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/model/retype_password.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(const PasswordState(
    password: Password.pure(),
    retypePassword: RetypePassword.pure(password: ''),
    status: PasswordStatus.initial,
  ));

  void passwordChanged(String value) {
    emit(state.copyWith(
      password: Password.dirty(value),
      retypePassword: RetypePassword.dirty(
        password: value,
        value: state.retypePassword.value,
      ),
      status: PasswordStatus.initial,
    ));
  }

  void retypePasswordChanged(String value) {
    emit(state.copyWith(
      retypePassword: RetypePassword.dirty(
        password: state.password.value,
        value: value,
      ),
      status: PasswordStatus.initial,
    ));
  }

  void submit() {
    if (state.isNotValid) {
      emit(state.copyWith(
        status: PasswordStatus.invalid,
      ));
    }
    else {
      emit(state.copyWith(
        status: PasswordStatus.valid,
      ));
    }
  }

  void nextPageShown() {
    emit(state.copyWith(
      status: PasswordStatus.initial,
    ));
  }
}
