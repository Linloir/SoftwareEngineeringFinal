import 'dart:io';

import 'package:grpc/grpc.dart' as grpc;
import 'package:whatelse_server/src/utils/storage/config_provider.dart';
import 'package:whatelse_server/src/generated/grpc/auth.pbgrpc.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/utils/service/auth_provider.dart';
import 'package:whatelse_server/src/utils/service/log_provider.dart';
import 'package:whatelse_server/src/utils/storage/redis_provider.dart';

class AuthService extends AuthServiceBase {
  @override
  Future<AuthResponse> authenticate(grpc.ServiceCall call, AuthRequest request) async {
    try {
      final user = await AuthProvider.authenticate(request.identifier, request.password);
      final accessToken = AuthProvider.genAccessToken(user);
      final refreshToken = AuthProvider.genRefreshToken(user);
      return AuthResponse(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
    } on InvalidCredentialsException catch (e) {
      throw grpc.GrpcError.permissionDenied(e.toString());
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<RenewAuthNResponse> renewAuthN(grpc.ServiceCall call, RenewAuthNRequest request) async {
    try {
      AuthProvider.verifyRefreshToken(request.refreshToken);
      return RenewAuthNResponse(
        accessToken: AuthProvider.renewAccessToken(call.clientMetadata?['access_token'] ?? ''),
      );
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<RenewAuthZResponse> renewAuthZ(grpc.ServiceCall call, RenewAuthZRequest request) async {
    try {
      await AuthProvider.verifyRefreshToken(request.refreshToken);
      final user = await AuthProvider.authenticate(request.identifier, request.password);
      final accessToken = AuthProvider.genAccessToken(user);
      final refreshToken = AuthProvider.genRefreshToken(user);
      return RenewAuthZResponse(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
    } on InvalidCredentialsException catch (e) {
      throw grpc.GrpcError.permissionDenied(e.toString());
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<RevokeAuthResponse> revokeAuth(grpc.ServiceCall call, RevokeAuthRequest request) async {
    AuthProvider.revokeRefreshToken(request.refreshToken);
    return RevokeAuthResponse();
  }

  @override
  Future<RequestVerifResponse> requestVerif(grpc.ServiceCall call, RequestVerifRequest request) async {
    // Check for continuous request
    try {
      final redisCli = await RedisProvider.client;
      final req = await redisCli.get('verifreq:${request.userClaim}');
      if (req != null) {
        LogProvider.logger.w('User ${request.userClaim} is requesting verification code too frequently.');
        throw grpc.GrpcError.alreadyExists('Requesting verification code too frequently.');
      }
      // Remove old verification code
      final rec = await redisCli.get('verifrec:${request.userClaim}');
      if (rec != null) {
        await redisCli.send_object(['DEL', 'verifrec:${request.userClaim}']);
        await redisCli.send_object(['DEL', 'verifcode:$rec']);
        LogProvider.logger.d('Verification code $rec of user ${request.userClaim} is removed from Redis.');
      }
      // Generate verification code
      final verifCode = await AuthProvider.genVerifCode(request.userClaim);
      // Add to Redis
      await redisCli.send_object(['SETEX', 'verifreq:${request.userClaim}', ConfigProvider.redis.requestTTL, '']);
      await redisCli.send_object(['SETEX', 'verifrec:${request.userClaim}', ConfigProvider.redis.verifCodeTTL, verifCode]);
      // Send verification code
      LogProvider.logger.d('Verification code $verifCode is sent to user ${request.userClaim}.');
      return RequestVerifResponse();
    } on grpc.GrpcError {
      rethrow;
    } on SocketException catch (e) {
      LogProvider.logger.e('Redis connection error: $e');
      throw grpc.GrpcError.unavailable('Redis connection error: $e');
    } catch (e) {
      LogProvider.logger.e('Error in requestVerif endpoint: $e');
      throw grpc.GrpcError.internal('Error in request verif endpoint: $e');
    }
  }

  @override
  Future<ValidateVerifResponse> validateVerif(grpc.ServiceCall call, ValidateVerifRequest request) async {
    try {
      final redisCli = await RedisProvider.client;
      final record = await redisCli.get('verifcode:${request.verifCode}');
      if (record == null) {
        throw grpc.GrpcError.notFound('Verification code not found.');
      }
      if (record != request.userClaim) {
        throw grpc.GrpcError.permissionDenied('Verification code does not match the user.');
      }
      await redisCli.send_object(['DEL', 'verifcode:${request.verifCode}']);
      await redisCli.send_object(['DEL', 'verifrec:${request.userClaim}']);
      await redisCli.send_object(['DEL', 'verifreq:${request.userClaim}']);
      LogProvider.logger.d('Verification code ${request.verifCode} is validated for user ${request.userClaim}, the code will no longer be valid.');
    } on grpc.GrpcError {
      rethrow;
    } on SocketException catch (e) {
      LogProvider.logger.e('Redis connection error: $e');
      throw grpc.GrpcError.internal('Redis connection error: $e');
    } catch (e) {
      LogProvider.logger.e('Error in validateVerif endpoint: $e');
      throw grpc.GrpcError.internal('Error in validate verif endpoint: $e');
    }
    return ValidateVerifResponse();
  }
}