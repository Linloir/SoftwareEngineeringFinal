part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChangedEvent extends AuthEvent {
  const AuthenticationStatusChangedEvent(this.newStatus);

  final AuthStatus newStatus;

  @override
  List<Object> get props => [newStatus];
}

class AuthMainEvent extends AuthEvent {
  const AuthMainEvent(this.event);

  final MainEvent? event;

  @override
  List<Object> get props => [event ?? 'null'];
}
