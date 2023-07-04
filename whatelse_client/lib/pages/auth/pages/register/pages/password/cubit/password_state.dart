part of 'password_cubit.dart';

enum PasswordStatus {
  initial,
  invalid,
  valid,
}

class PasswordState extends Equatable with FormzMixin {
  const PasswordState({
    required this.password,
    required this.retypePassword,
    required this.status,
  });

  final Password password;
  final RetypePassword retypePassword;
  final PasswordStatus status;

  PasswordState copyWith({
    Password? password,
    RetypePassword? retypePassword,
    PasswordStatus? status,
  }) {
    return PasswordState(
      password: password ?? this.password,
      retypePassword: retypePassword ?? this.retypePassword,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [password, retypePassword, status];

  @override
  List<FormzInput> get inputs => [password, retypePassword];
}
