import 'package:easy_localization/easy_localization.dart';
import 'package:formz/formz.dart';

const _minPasswordLength = 8;

enum PasswordValidationError {
  empty,
  tooShort;

  String get detail {
    switch (this) {
      case PasswordValidationError.empty:
        return 'reg.password.error.empty'.tr();
      case PasswordValidationError.tooShort:
        return 'reg.password.error.too_short'.tr(args: [_minPasswordLength.toString()]);
    }
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PasswordValidationError.empty;
    }
    if (value.length < _minPasswordLength) {
      return PasswordValidationError.tooShort;
    }
    return null;
  }
}