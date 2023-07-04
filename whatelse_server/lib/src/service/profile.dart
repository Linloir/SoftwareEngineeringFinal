import 'package:grpc/grpc.dart' as grpc;
import 'package:whatelse_server/src/generated/grpc/common.pb.dart';
import 'package:whatelse_server/src/generated/grpc/profile.pbgrpc.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/model/jwt.dart';
import 'package:whatelse_server/src/utils/data/profile_provider.dart';
import 'package:whatelse_server/src/utils/storage/config_provider.dart';

class ProfileService extends ProfileServiceBase {
  @override
  Future<Empty> putProfile(grpc.ServiceCall call, ProfileInfo request) async {
    try {
      // verify token
      final accessToken = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      // verify operation permission
      final userId = accessToken.payload.userClaim;
      if (userId != request.user.id.toInt()) {
        throw OperationPermissionDeniedException();
      }
      // put profile
      await ProfileProvider.put(grpcProfile: request);
    } on TokenException catch (_) {
        throw grpc.GrpcError.unauthenticated();
    } on QueryException catch (_) {
      throw grpc.GrpcError.failedPrecondition();
    } catch (e) {
      throw grpc.GrpcError.unknown(e.toString());
    }
    return Empty();
  }

  @override
  Future<ProfileList> fetchProfile(grpc.ServiceCall call, FetchRequest request) async {
    try {
      // verify token
      final accessToken = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      // get user id
      final userId = accessToken.payload.userClaim;
      // fetch profile
      final profiles = await ProfileProvider.fetch(
        userId: userId,
        lastFetch: request.hasLastFetchAt() ? request.lastFetchAt.toInt() : null,
      );
      // return result
      return profiles;
    } on TokenException catch (e) {
      throw grpc.GrpcError.custom(
        e.statusCode,
        e.toString(),
      );
    } on QueryException catch (e) {
      throw grpc.GrpcError.custom(
        e.statusCode,
      );
    } catch (e) {
      throw grpc.GrpcError.unknown(e.toString());
    }
  }
}