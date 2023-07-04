part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState({
    this.needMerge = false,
  });

  final bool needMerge;

  AuthState copyWith({
    bool? needMerge,
  });

  @override
  List<Object> get props => [needMerge];
}

class InitialState extends AuthState {
  const InitialState({
    bool needMerge = false,
  }) : super(needMerge: needMerge);

  @override
  AuthState copyWith({
    bool? needMerge,
  }) {
    return InitialState(
      needMerge: needMerge ?? this.needMerge,
    );
  }
}

class LocalState extends AuthState {
  const LocalState({
    bool needMerge = false,
  }) : super(needMerge: needMerge);

  @override
  AuthState copyWith({
    bool? needMerge,
  }) {
    return LocalState(
      needMerge: needMerge ?? this.needMerge,
    );
  }
}

class AuthenticatedState extends AuthState {
  const AuthenticatedState({
    bool needMerge = false,
  }) : super(needMerge: needMerge);

  @override
  AuthState copyWith({
    bool? needMerge,
  }) {
    return AuthenticatedState(
      needMerge: needMerge ?? this.needMerge,
    );
  }
}

class UnauthenticatedState extends AuthState {
  const UnauthenticatedState({
    bool needMerge = false,
  }) : super(needMerge: needMerge);

  @override
  AuthState copyWith({
    bool? needMerge,
  }) {
    return UnauthenticatedState(
      needMerge: needMerge ?? this.needMerge,
    );
  }
}

class ExpiredState extends AuthState {
  const ExpiredState({
    bool needMerge = false,
  }) : super(needMerge: needMerge);

  @override
  AuthState copyWith({
    bool? needMerge,
  }) {
    return ExpiredState(
      needMerge: needMerge ?? this.needMerge,
    );
  }
}
