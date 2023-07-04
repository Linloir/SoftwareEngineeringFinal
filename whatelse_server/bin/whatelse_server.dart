import 'package:grpc/grpc.dart' as grpc;
import 'package:whatelse_server/src/service/auth.dart';
import 'package:whatelse_server/src/service/interceptor/auth.dart';
import 'package:whatelse_server/src/service/profile.dart';
import 'package:whatelse_server/src/service/user.dart';
import 'package:whatelse_server/src/utils/service/log_provider.dart';

Future<void> main(List<String> arguments) async {
  LogProvider.init();

  final authSvr = grpc.Server([
    AuthService(),
    UserService(),
  ]);
  await authSvr.serve(
    port: 8080
  );
  
  LogProvider.logger.i('Auth Server started on port 8080');

  final mainSvr = grpc.Server(
    [
      ProfileService(),
    ],
    [
      authInterceptor,
    ]
  );
  await mainSvr.serve(
    port: 8081,
  );

  LogProvider.logger.i('Main Server started on port 8081');
}
