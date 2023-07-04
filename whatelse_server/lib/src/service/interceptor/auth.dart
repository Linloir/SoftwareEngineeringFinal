import 'package:grpc/grpc.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/utils/service/auth_provider.dart';

Interceptor authInterceptor = (call, method) {
  try {
    AuthProvider.verifyAccessToken(
      call.clientMetadata?['access_token'] ?? ''
    );
  } on TokenException catch (_) {
    return GrpcError.unauthenticated();
  } catch (e) {
    return GrpcError.unknown(e.toString());
  }
  return null;
};
