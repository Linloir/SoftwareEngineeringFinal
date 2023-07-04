enum UserClaimType {
  phone,
  email,
  invalid,
}

UserClaimType getClaimType(String userClaim) {
  const phoneRegEx = r'^\+[0-9]{1,3}-[0-9]{6,11}$';
  const emailRegEx = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$';
  final phoneMatch = RegExp(phoneRegEx).hasMatch(userClaim);
  final emailMatch = RegExp(emailRegEx).hasMatch(userClaim);
  if (phoneMatch) {
    return UserClaimType.phone;
  } else if (emailMatch) {
    return UserClaimType.email;
  } else {
    return UserClaimType.invalid;
  }
}