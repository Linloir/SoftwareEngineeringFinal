import 'package:whatelse_server/src/generated/prisma/prisma_client.dart';
import 'package:whatelse_server/src/utils/storage/config_provider.dart';

class PrismaProvider {
  static final PrismaProvider _singleton = PrismaProvider._init();
  static PrismaClient get client => _singleton._client;
  
  final PrismaClient _client;

  PrismaProvider._internal(this._client);

  factory PrismaProvider._init() {
    final user = ConfigProvider.database.user;
    final password = ConfigProvider.database.password;
    final host = ConfigProvider.database.host;
    final port = ConfigProvider.database.port;
    final postgreUrl = 'postgresql://$user:$password@$host:$port/whatelse?schema=public';
    final client = PrismaClient(
      datasources: Datasources(
        db: postgreUrl
      ),
    );
    return PrismaProvider._internal(client);
  }
}
