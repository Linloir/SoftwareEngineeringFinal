class DBConfig {
  final String user;
  final String password;
  final String host;
  final int port;

  DBConfig({
    required this.user,
    required this.password,
    required this.host,
    required this.port,
  });
}

class RedisConfig {
  final String host;
  final int port;
  final int requestTTL;
  final int verifCodeTTL;

  RedisConfig({
    required this.host,
    required this.port,
    required this.requestTTL,
    required this.verifCodeTTL,
  });
}

class DataConfig {
  final String root;

  DataConfig({
    required this.root,
  });
}

class JWTConfig {
  final String alg;
  final String authKey;
  final Duration refreshExp;
  final Duration accessExp;

  JWTConfig({
    required this.alg,
    required this.authKey,
    required this.refreshExp,
    required this.accessExp,
  });
}
