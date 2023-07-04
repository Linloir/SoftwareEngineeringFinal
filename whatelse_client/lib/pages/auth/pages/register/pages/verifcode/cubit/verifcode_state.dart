part of 'verifcode_cubit.dart';

enum VerifCodeRequestStatus {
  initial,
  requesting,
  sent,
  failed,
}

enum VerifCodeInputStatus {
  initial,
  validating,
  invalid,
  valid,
}

class VerifCodeState extends Equatable {
  const VerifCodeState({
    required this.requestStatus,
    required this.inputStatus,
    required this.remainingTime,
    this.errorMsg = '',
  });

  final VerifCodeRequestStatus requestStatus;
  final VerifCodeInputStatus inputStatus;
  final int remainingTime;
  final String errorMsg;

  VerifCodeState copyWith({
    VerifCodeRequestStatus? requestStatus,
    VerifCodeInputStatus? inputStatus,
    int? remainingTime,
    String? errorMsg,
  }) {
    return VerifCodeState(
      requestStatus: requestStatus ?? this.requestStatus,
      inputStatus: inputStatus ?? this.inputStatus,
      remainingTime: remainingTime ?? this.remainingTime,
      errorMsg: errorMsg ?? '',
    );
  }

  @override
  List<Object> get props => [requestStatus, inputStatus, remainingTime, errorMsg];
}
