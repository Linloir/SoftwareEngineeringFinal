class JWTConfig {
  final String storeSecret;

  JWTConfig({
    required this.storeSecret,
  });
}

class AuthServerConfig {
  final String host;
  final int port;

  AuthServerConfig({
    required this.host,
    required this.port,
  });
}

class MainServerConfig {
  final String host;
  final int port;

  MainServerConfig({
    required this.host,
    required this.port,
  });
}
