part of 'user_info_cubit.dart';

enum RegisterStatus {
  initial,
  invalid,
  submitted,
  failed,
  success,
}

class UserInfoState extends Equatable with FormzMixin {
  const UserInfoState({
    required this.userName,
    required this.status,
    required this.errorMsg,
  });

  final RegisterStatus status;
  final String errorMsg;
  final UserName userName;

  UserInfoState copyWith({
    UserName? userName,
    RegisterStatus? status,
    String? errorMsg,
  }) {
    return UserInfoState(
      userName: userName ?? this.userName,
      status: status ?? this.status,
      errorMsg: errorMsg ?? '',
    );
  }

  @override
  List<Object> get props => [status, userName, errorMsg];

  @override
  List<FormzInput> get inputs => [userName];
}
