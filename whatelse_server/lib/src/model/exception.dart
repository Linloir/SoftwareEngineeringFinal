mixin ExceptionCodeMixin {
  /// The status code of the exception
  int get statusCode;
}

abstract class ConfigException with ExceptionCodeMixin implements Exception {}
class InvalidConfigException implements ConfigException {
  @override
  int get statusCode => 20;

  final String message;

  InvalidConfigException([this.message = '']);

  @override
  String toString() => 'InvalidConfigException: $message';
}


abstract class TokenException with ExceptionCodeMixin implements Exception {}
class InvalidTokenException implements TokenException {
  @override
  int get statusCode => 21;

  /// The description on why the token is invalid
  final String message;

  InvalidTokenException([this.message = '']);
  
  @override
  String toString() => 'InvalidTokenException: $message';
}
class ExpiredTokenException implements TokenException {
  @override
  int get statusCode => 22;

  /// The expiration date of the token
  final DateTime expiration;

  ExpiredTokenException(this.expiration);

  @override
  String toString() => 'ExpiredTokenException: The provided token has expired on $expiration.';
}

abstract class AuthException with ExceptionCodeMixin implements Exception {}
class InvalidCredentialsException implements AuthException {
  @override
  int get statusCode => 23;

  /// The description on why the credentials are invalid
  final String message;

  InvalidCredentialsException([this.message = '']);
  
  @override
  String toString() => 'InvalidCredentialsException: $message';
}

abstract class FileException with ExceptionCodeMixin implements Exception {}
class InvalidFileCategoryException implements FileException {
  @override
  int get statusCode => 24;
}

abstract class QueryException with ExceptionCodeMixin implements Exception {}
class DependencyNotFoundException implements QueryException {
  @override
  int get statusCode => 25;
}
class OperationPermissionDeniedException implements QueryException {
  @override
  int get statusCode => 26;
}
