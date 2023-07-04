import 'dart:io';

import 'package:whatelse_server/src/model/config.dart';
import 'package:yaml/yaml.dart';

abstract class ConfigProvider {
  static final _secrets = File('local/secret.yaml').readAsStringSync();
  static final _config = File('local/config.yaml').readAsStringSync();
  
  static Map<dynamic, dynamic> _parseSecret(String key) {
    final list = loadYaml(_secrets)[key] as YamlList;
    return list.fold(
      {},
      (conf, entry) => conf..addAll(entry)
    );
  }

  static Map<dynamic, dynamic> _parseConfig(String key) {
    final list = loadYaml(_config)[key] as YamlList;
    return list.fold(
      {},
      (conf, entry) => conf..addAll(entry)
    );
  }

  static DBConfig get database {
    final postgre = _parseSecret('postgre');
    return DBConfig(
      user: postgre['user'] ?? '',
      password: postgre['password'] ?? '',
      host: postgre['host'] ?? '',
      port: postgre['port'] ?? 5432,
    );
  }

  static RedisConfig get redis {
    final redis = _parseConfig('redis');
    return RedisConfig(
      host: redis['host'] ?? 'localhost',
      port: redis['port'] ?? 6379,
      requestTTL: redis['reqTTL'] ?? 60,
      verifCodeTTL: redis['verifTTL'] ?? 300,
    );
  }

  static DataConfig get data {
    final data = _parseConfig('data');
    return DataConfig(
      root: data['root'] ?? '/data',
    );
  }

  static JWTConfig get jwt {
    final jwt = _parseSecret('jwt');
    return JWTConfig(
      alg: jwt['alg'] ?? 'HS256',
      authKey: jwt['auth_secret'] ?? '',
      refreshExp: Duration(milliseconds: jwt['ref_exp'] ?? 0),
      accessExp: Duration(milliseconds: jwt['acc_exp'] ?? 0),
    );
  }
}
