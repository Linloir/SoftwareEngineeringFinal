import 'package:easy_localization/easy_localization.dart';
import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty;

  String get detail {
    switch (this) {
      case PasswordValidationError.empty:
        return 'password_invalid_empty'.tr();
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
    return null;
  }
}
