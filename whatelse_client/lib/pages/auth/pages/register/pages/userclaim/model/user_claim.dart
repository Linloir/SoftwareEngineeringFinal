import 'package:easy_localization/easy_localization.dart';
import 'package:formz/formz.dart';
import 'package:whatelse_client/utils/user_claim.dart';

enum UserClaimValidationError {
  invalid,
  empty;

  String get detail {
    switch (this) {
      case UserClaimValidationError.empty:
        return 'reg.userclaim.error.empty_argument'.tr();
      case UserClaimValidationError.invalid:
        return 'reg.userclaim.error.invalid_argument'.tr();
    }
  }
}

class UserClaim extends FormzInput<String, UserClaimValidationError> {
  const UserClaim.pure() : super.pure('');
  const UserClaim.dirty([String value = '']) : super.dirty(value);

  @override
  UserClaimValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return UserClaimValidationError.empty;
    }
    final type = getClaimType(value);
    if (type == UserClaimType.invalid) {
      return UserClaimValidationError.invalid;
    }
    return null;
  }
}