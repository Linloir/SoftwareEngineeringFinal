part of 'userclaim_cubit.dart';

abstract class UserClaimState extends Equatable {
  const UserClaimState({
    required this.userClaim,
  });

  final UserClaim userClaim;

  UserClaimState copyWith({
    UserClaim? userClaim,
  });

  @override
  List<Object> get props => [userClaim];
}

class UserClaimInitial extends UserClaimState {
  const UserClaimInitial({
    required UserClaim userClaim,
  }) : super(userClaim: userClaim);

  @override
  UserClaimState copyWith({
    UserClaim? userClaim,
  }) {
    return UserClaimInitial(
      userClaim: userClaim ?? this.userClaim,
    );
  }
}

class UserClaimLoading extends UserClaimState {
  const UserClaimLoading({
    required UserClaim userClaim,
  }) : super(userClaim: userClaim);

  @override
  UserClaimState copyWith({
    UserClaim? userClaim,
  }) {
    return UserClaimLoading(
      userClaim: userClaim ?? this.userClaim,
    );
  }
}

class UserClaimFailed extends UserClaimState {
  const UserClaimFailed({
    required UserClaim userClaim,
    required this.errMsg,
  }) : super(userClaim: userClaim);

  final String errMsg;

  @override
  UserClaimState copyWith({
    UserClaim? userClaim,
  }) {
    return UserClaimFailed(
      userClaim: userClaim ?? this.userClaim,
      errMsg: errMsg,
    );
  }

  @override
  List<Object> get props => [userClaim, errMsg];
}

class UserClaimSuccess extends UserClaimState {
  const UserClaimSuccess({
    required UserClaim userClaim,
  }) : super(userClaim: userClaim);

  @override
  UserClaimState copyWith({
    UserClaim? userClaim,
  }) {
    return UserClaimSuccess(
      userClaim: userClaim ?? this.userClaim,
    );
  }
}
