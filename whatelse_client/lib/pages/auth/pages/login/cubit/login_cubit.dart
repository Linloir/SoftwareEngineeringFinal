import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatelse_client/pages/auth/pages/login/model/password.dart';
import 'package:whatelse_client/pages/auth/pages/login/model/user_claim.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required AuthRepository authRepository,
  }): _authRepository = authRepository,
      super(const LoginState(
        userClaim: UserClaim.pure(),
        password: Password.pure(),
        storeCredentials: false,
        status: LogStatus.initial,
      ))
  {
    _logEventSubscription = _authRepository.logEvents.listen((event) {
      switch (event) {
        case LogEvent.internalError:
          emit(state.copyWith(
            status: LogStatus.failed,
            errorMsg: LogEvent.internalError.message,
          ));
          break;
        case LogEvent.networkError:
          emit(state.copyWith(
            status: LogStatus.failed,
            errorMsg: LogEvent.networkError.message,
          ));
          break;
        case LogEvent.unknownError:
          emit(state.copyWith(
            status: LogStatus.failed,
            errorMsg: LogEvent.unknownError.message,
          ));
          break;
        case LogEvent.invalidCredentials:
          emit(state.copyWith(
            status: LogStatus.failed,
            errorMsg: LogEvent.invalidCredentials.message,
          ));
          break;
        case LogEvent.success:
          emit(state.copyWith(
            status: LogStatus.successed,
            errorMsg: LogEvent.success.message,
          ));
          break;
      }
    });
    Future(() async {
      final pref = await SharedPreferences.getInstance();
      final storeCredentials = pref.getBool('storeCredentials') ?? false;
      emit(state.copyWith(
        storeCredentials: storeCredentials,
        errorMsg: state.errorMsg,
      ));
    });
  }

  final AuthRepository _authRepository;
  late final StreamSubscription _logEventSubscription;

  void userClaimChanged(String value) {
    final userClaim = UserClaim.dirty(value);
    emit(state.copyWith(
      userClaim: userClaim,
      status: LogStatus.initial,
      errorMsg: null,
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      status: LogStatus.initial,
      errorMsg: null,
    ));
  }

  Future<void> storeCredentialsChanged(bool value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('storeCredentials', value);
    emit(state.copyWith(
      storeCredentials: value,
      errorMsg: state.errorMsg,
    ));
  }

  Future<void> loginRequested() async {
    emit(state.copyWith(
      status: LogStatus.submitted,
      errorMsg: null,
    ));
    if (state.isNotValid) {
      emit(state.copyWith(
        status: LogStatus.invalid,
        errorMsg: null,
      ));
      return;
    }
    await _authRepository.logIn(
      userClaim: state.userClaim.value,
      password: state.password.value,
      storeCredentials: state.storeCredentials,
    );
  }

  Future<void> localInitRequested() async {
    emit(state.copyWith(
      status: LogStatus.localInitializing,
      errorMsg: null,
    ));
    await _authRepository.initLocalAccount();
  }

  @override
  Future<void> close() {
    _logEventSubscription.cancel();
    return super.close();
  }
}
