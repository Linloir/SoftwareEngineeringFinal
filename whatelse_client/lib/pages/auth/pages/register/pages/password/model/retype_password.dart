import 'package:easy_localization/easy_localization.dart';
import 'package:formz/formz.dart';

enum RetypePasswordValidationError {
  empty,
  notMatch;

  String get detail {
    switch (this) {
      case RetypePasswordValidationError.empty:
        return 'reg.password.error.empty'.tr();
      case RetypePasswordValidationError.notMatch:
        return 'reg.password.error.not_match'.tr();
    }
  }
}

class RetypePassword extends FormzInput<String, RetypePasswordValidationError> {
  const RetypePassword.pure({
    required this.password,
  }) : super.pure('');
  const RetypePassword.dirty({
    required this.password,
    String value = '',
  }) : super.dirty(value);

  final String password;

  @override
  RetypePasswordValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return RetypePasswordValidationError.empty;
    }
    if (value != password) {
      return RetypePasswordValidationError.notMatch;
    }
    return null;
  }
}