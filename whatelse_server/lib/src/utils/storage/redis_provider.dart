import 'package:redis/redis.dart';
import 'package:whatelse_server/src/utils/storage/config_provider.dart';

abstract class RedisProvider {
  static Future<Command> get client async {
    return RedisConnection().connect(ConfigProvider.redis.host, ConfigProvider.redis.port);
  }
  static Future<Command> get bulkCli async {
    return Command.from(await client).setParser(RedisParserBulkBinary());
  }
}
