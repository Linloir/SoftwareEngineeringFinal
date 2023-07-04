import 'package:flutter/services.dart';
import 'package:whatelse_client/repositories/config/config_repository_model.dart';
import 'package:yaml/yaml.dart';

abstract class ConfigRepository {
  static Future<void> ensureInitialized() async {
    _secrets = await rootBundle.loadString('assets/local/secrets.yaml');
  }

  static late final String _secrets;
  
  static Map<dynamic, dynamic> _parseSecret(String key) {
    final list = loadYaml(_secrets)[key] as YamlList;
    return list.fold(
      {},
      (conf, entry) => conf..addAll(entry)
    );
  }

  static JWTConfig get jwtConfig {
    final conf = _parseSecret('jwt');
    return JWTConfig(
      storeSecret: conf['store_secret'],
    );
  }

  static AuthServerConfig get authServerConfig {
    final conf = _parseSecret('auth_server');
    return AuthServerConfig(
      host: conf['host'],
      port: conf['port'],
    );
  }

  static MainServerConfig get mainServerConfig {
    final conf = _parseSecret('main_server');
    return MainServerConfig(
      host: conf['host'],
      port: conf['port'],
    );
  }
}
