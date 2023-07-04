import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/model/user_claim.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

part 'userclaim_state.dart';

class UserClaimCubit extends Cubit<UserClaimState> {
  UserClaimCubit({
    required AuthRepository authRepository,
  }): _authRepository = authRepository,
      super(const UserClaimInitial(
        userClaim: UserClaim.pure(),
      ))
  {
    _userclaimCheckSubscription = _authRepository.regUserClaimCheckEvents.listen((event) {
      switch (event) {
        case RegUserClaimCheckEvent.success:
          emit(UserClaimSuccess(
            userClaim: state.userClaim,
          ));
          break;
        case RegUserClaimCheckEvent.internalError:
        case RegUserClaimCheckEvent.alreadyExists:
        case RegUserClaimCheckEvent.invalidArgument:
          emit(UserClaimFailed(
            userClaim: state.userClaim,
            errMsg: event.message,
          ));
          break;
      }
    });
  }

  final AuthRepository _authRepository;
  late final StreamSubscription _userclaimCheckSubscription;

  void userClaimChanged(String userClaim) {
    final userClaimValue = UserClaim.dirty(userClaim);
    emit(UserClaimInitial(
      userClaim: userClaimValue,
    ));
  }

  Future<void> userClaimSubmitted() async {
    if (state.userClaim.isNotValid) {
      emit(UserClaimFailed(
        userClaim: state.userClaim,
        errMsg: state.userClaim.error?.detail ?? '',
      ));
      return;
    }
    emit(UserClaimLoading(
      userClaim: state.userClaim,
    ));
    await _authRepository.checkUserClaim(
      userClaim: state.userClaim.value,
    );
  }

  void nextPageShown() {
    emit(UserClaimInitial(
      userClaim: UserClaim.dirty(state.userClaim.value),
    ));
  }

  @override
  Future<void> close() {
    _userclaimCheckSubscription.cancel();
    return super.close();
  }
}
