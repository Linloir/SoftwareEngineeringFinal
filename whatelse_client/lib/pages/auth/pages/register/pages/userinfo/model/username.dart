import 'package:easy_localization/easy_localization.dart';
import 'package:formz/formz.dart';

enum UserNameValidationError {
  empty;

  String get detail {
    switch (this) {
      case UserNameValidationError.empty:
        return 'reg.userinfo.error.empty'.tr();
    }
  }
}

class UserName extends FormzInput<String, UserNameValidationError> {
  const UserName.pure() : super.pure('');
  const UserName.dirty([String value = '']) : super.dirty(value);

  @override
  UserNameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return UserNameValidationError.empty;
    }
    return null;
  }
}
