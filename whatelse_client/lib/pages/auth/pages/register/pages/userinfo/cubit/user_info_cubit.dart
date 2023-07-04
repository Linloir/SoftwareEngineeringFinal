import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/model/username.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit({
    required AuthRepository authRepository,
    required String userClaim,
    required String password,
  }): _authRepository = authRepository,
      _userClaim = userClaim,
      _password = password,
      super(const UserInfoState(
        userName: UserName.pure(),
        status: RegisterStatus.initial,
        errorMsg: '',
      ))
  {
    _registerEventSubscription = authRepository.regEvents.listen((event) {
      switch (event) {
        case RegEvent.internalError:
        case RegEvent.networkError:
          emit(state.copyWith(
            status: RegisterStatus.failed,
            errorMsg: event.message,
          ));
          break;
        case RegEvent.success:
          emit(state.copyWith(
            status: RegisterStatus.success,
          ));
          break;
      }
    });
  }

  final AuthRepository _authRepository;
  late final StreamSubscription _registerEventSubscription;
  final String _userClaim;
  final String _password;

  void userNameChanged(String userName) {
    emit(state.copyWith(
      userName: UserName.dirty(userName),
      status: RegisterStatus.initial,
    ));
  }

  void registerSubmitted() {
    if (state.isNotValid) {
      emit(state.copyWith(
        status: RegisterStatus.invalid,
      ));
      return;
    }
    emit(state.copyWith(
      status: RegisterStatus.submitted,
    ));
    _authRepository.register(
      userClaim: _userClaim,
      password: _password,
      username: state.userName.value,
    );
  }

  @override
  Future<void> close() {
    _registerEventSubscription.cancel();
    return super.close();
  }
}
