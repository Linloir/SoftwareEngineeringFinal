import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository, super(const InitialState()) {
    // Reducer of state transition
    on<AuthenticationStatusChangedEvent>((event, emit) {
      switch (event.newStatus) {
        case AuthStatus.authenticated:
          return emit(const AuthenticatedState());
        case AuthStatus.unauthenticated:
          return emit(const UnauthenticatedState());
        case AuthStatus.expired:
          return emit(const ExpiredState());
        case AuthStatus.local:
          return emit(const LocalState());
      }
    });
    on<AuthMainEvent>((event, emit) {
      switch (event.event) {
        case MainEvent.requestMerge:
          return emit(state.copyWith(needMerge: true));
        case null:
          return emit(state.copyWith(needMerge: false));
      }
    });

    // Listen to auth repository
    _authStatusSubscription = _authRepository.authStatus.listen((status) {
      add(AuthenticationStatusChangedEvent(status));
    });

    // Listen to main event
    _mainEventSubscription = _authRepository.mainEvents.listen((event) {
      add(AuthMainEvent(event));
    });
  }

  final AuthRepository _authRepository;
  late final StreamSubscription _authStatusSubscription;
  late final StreamSubscription _mainEventSubscription;

  void logIn({
    required String userClaim,
    required String password,
  }) {
    _authRepository.logIn(
      userClaim: userClaim,
      password: password,
    );
  }

  Future<void> handleMerge({ bool merge = true }) async {
    if (merge) {
      await _authRepository.mergeLocalAccount();
    }
    else {
      await _authRepository.removeLocalAccount();
    }
    add(const AuthMainEvent(null));
  } 

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    _mainEventSubscription.cancel();
    return super.close();
  }
}
