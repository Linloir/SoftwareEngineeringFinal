import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

part 'verifcode_state.dart';

class VerifCodeCubit extends Cubit<VerifCodeState> {
  VerifCodeCubit({
    required AuthRepository authRepository,
    required String userClaim,
  }): _authRepository = authRepository,
      _userClaim = userClaim,
      super(const VerifCodeState(
        inputStatus: VerifCodeInputStatus.initial,
        requestStatus: VerifCodeRequestStatus.initial,
        remainingTime: 0,
      ))
  {
    _verifCodeRequestEventsSubscription = _authRepository.verifCodeRequestEvents.listen((event) {
      switch (event) {
        case VerifCodeRequestEvent.sent:
          emit(state.copyWith(
            requestStatus: VerifCodeRequestStatus.sent,
            remainingTime: 60,
          ));
          _timer?.cancel();
          _timer = Timer.periodic(
            const Duration(seconds: 1),
            (timer) {
              if (state.inputStatus != VerifCodeInputStatus.valid) {
                emit(state.copyWith(remainingTime: 60 - timer.tick));
              }
              if (timer.tick >= 60) {
                timer.cancel();
                emit(state.copyWith(
                  requestStatus: VerifCodeRequestStatus.initial,
                ));
              }
            }
          );
          break;
        case VerifCodeRequestEvent.invalidCode:
          emit(state.copyWith(
            inputStatus: VerifCodeInputStatus.invalid,
            errorMsg: event.message,
          ));
          break;
        case VerifCodeRequestEvent.requestFailedError:
        case VerifCodeRequestEvent.requestTooFrequentError:
          emit(state.copyWith(
            requestStatus: VerifCodeRequestStatus.failed,
            errorMsg: event.message,
          ));
          break;
        case VerifCodeRequestEvent.success:
          emit(state.copyWith(
            inputStatus: VerifCodeInputStatus.valid,
            requestStatus: VerifCodeRequestStatus.initial,
            remainingTime: 0,
            errorMsg: event.message,
          ));
          _timer?.cancel();
          break;
      }
    });
    sendVerifCode();
  }

  final AuthRepository _authRepository;
  late final StreamSubscription _verifCodeRequestEventsSubscription;
  final String _userClaim;
  Timer? _timer;

  void errorDismissed() {
    emit(state.copyWith(
      inputStatus: VerifCodeInputStatus.initial,
      requestStatus: VerifCodeRequestStatus.initial,
    ));
  }

  void pinCodeChanged() {
    emit(state.copyWith(
      inputStatus: VerifCodeInputStatus.initial,
    ));
  }

  void pinCodeCompleted(String code) {
    emit(state.copyWith(
      inputStatus: VerifCodeInputStatus.validating,
    ));
    _authRepository.validateVerifCode(
      userClaim: _userClaim,
      verifCode: code,
    );
  }

  void pinCodeReset() {
    emit(state.copyWith(
      inputStatus: VerifCodeInputStatus.initial,
    ));
  }

  void sendVerifCode() {
    emit(state.copyWith(
      requestStatus: VerifCodeRequestStatus.requesting,
    ));
    _authRepository.requestVerifCode(
      userClaim: _userClaim,
    );
  }

  @override
  Future<void> close() {
    _verifCodeRequestEventsSubscription.cancel();
    _timer?.cancel();
    return super.close();
  }
}
