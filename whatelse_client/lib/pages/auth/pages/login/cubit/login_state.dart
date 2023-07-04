part of 'login_cubit.dart';

enum LogStatus {
  initial,
  invalid,
  localInitializing,
  submitted,
  successed,
  failed,
}

class LoginState extends Equatable with FormzMixin {
  const LoginState({
    required this.userClaim,
    required this.password,
    required this.storeCredentials,
    required this.status,
    this.errorMsg,
  });

  final LogStatus status;
  final String? errorMsg;
  final UserClaim userClaim;
  final Password password;
  final bool storeCredentials;

  LoginState copyWith({
    UserClaim? userClaim,
    Password? password,
    bool? storeCredentials,
    LogStatus? status,
    required String? errorMsg,
  }) {
    return LoginState(
      userClaim: userClaim ?? this.userClaim,
      password: password ?? this.password,
      storeCredentials: storeCredentials ?? this.storeCredentials,
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  List<FormzInput> get inputs => [userClaim, password];

  @override
  List<Object> get props => [
    status,
    userClaim,
    password,
    storeCredentials,
  ];
}
