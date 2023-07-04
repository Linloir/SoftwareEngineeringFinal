import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:whatelse_server/src/utils/storage/config_provider.dart';
import 'package:whatelse_server/src/generated/grpc/user.pbgrpc.dart';
import 'package:whatelse_server/src/generated/prisma/prisma_client.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/model/jwt.dart';
import 'package:whatelse_server/src/utils/storage/file_provider.dart';
import 'package:whatelse_server/src/utils/service/log_provider.dart';
import 'package:whatelse_server/src/utils/storage/prisma_provider.dart';

class UserService extends UserServiceBase {
  @override
  Future<UserRegisterResponse> register(grpc.ServiceCall call, UserRegisterRequest request) async {
    // Check whether the user claim is email or phone number
    final emailRegex = RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    User? user;
    try {
      if (emailRegex.hasMatch(request.identifier)) {
        user = await PrismaProvider.client.user
          .findUnique(where: UserWhereUniqueInput(
            email: request.identifier,
          ));
      } else {
        user = await PrismaProvider.client.user
          .findUnique(where: UserWhereUniqueInput(
            phone: request.identifier,
          ));
      }
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
    if (user != null) {
      throw grpc.GrpcError.alreadyExists('User already exists');
    }
    // Create the user and a default profile
    try {
      final transaction = await PrismaProvider.client.$startTransaction();
      if (emailRegex.hasMatch(request.identifier)) {
        await transaction.user.create(data: UserCreateInput(
          name: request.username,
          email: request.identifier,
          password: request.password,
          unionId: request.hasUnionId() ? request.unionId : null,
          tencentId: request.hasTencentId() ? request.tencentId : null,
          appleId: request.hasAppleId() ? request.appleId : null,
        ));
      } else {
        await transaction.user.create(data: UserCreateInput(
          name: request.username,
          phone: request.identifier,
          password: request.password,
          unionId: request.hasUnionId() ? request.unionId : null,
          tencentId: request.hasTencentId() ? request.tencentId : null,
          appleId: request.hasAppleId() ? request.appleId : null,
        ));
      }
      await transaction.$commitTransaction();
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
    return UserRegisterResponse();
  }

  @override
  Future<UserCheckClaimResponse> checkClaim(grpc.ServiceCall call, UserCheckClaimRequest request) async {
    // Check whether the user claim is email or phone number
    final emailRegex = RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    // phone regex: +xx-xxxxxxxxxxxxx
    final phoneRegex = RegExp(r'^\+[0-9]{1,3}-[0-9]{6,11}$');
    try {
      User? user;
      if (!emailRegex.hasMatch(request.userClaim) && !phoneRegex.hasMatch(request.userClaim)) {
        throw grpc.GrpcError.invalidArgument('Invalid userclaim');
      }
      if (emailRegex.hasMatch(request.userClaim)) {
        user = await PrismaProvider.client.user
          .findUnique(where: UserWhereUniqueInput(
            email: request.userClaim,
          ));
      } else {
        user = await PrismaProvider.client.user
          .findUnique(where: UserWhereUniqueInput(
            phone: request.userClaim,
          ));
      }
      if (user != null) {
        return UserCheckClaimResponse(
          exists: true,
        );
      }
      return UserCheckClaimResponse(
        exists: false,
      );
    } on grpc.GrpcError {
      rethrow;
    }
    catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModNameResponse> modName(grpc.ServiceCall call, UserModNameRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          name: StringFieldUpdateOperationsInput(
            set: request.username,
          )
        ),
      );
      return UserModNameResponse();
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
  Future<UserModPasswordResponse> modPassword(grpc.ServiceCall call, UserModPasswordRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.findUnique(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      if (user.password != request.oldPassword) {
        throw grpc.GrpcError.permissionDenied('Wrong password');
      }
      await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          password: StringFieldUpdateOperationsInput(
            set: request.newPassword,
          )
        ),
      );
      return UserModPasswordResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModEmailResponse> modEmail(grpc.ServiceCall call, UserModEmailRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.findUnique(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      if (!request.hasEmail() && user.phone == null) {
        throw grpc.GrpcError.failedPrecondition('User should has at least one claim');
      }
      await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          email: NullableStringFieldUpdateOperationsInput(
            set: request.email,
          )
        ),
      );
      return UserModEmailResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModPhoneResponse> modPhone(grpc.ServiceCall call, UserModPhoneRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.findUnique(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      if (!request.hasPhone() && user.email == null) {
        throw grpc.GrpcError.failedPrecondition('User should has at least one claim');
      }
      await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          phone: NullableStringFieldUpdateOperationsInput(
            set: request.phone,
          )
        ),
      );
      return UserModPhoneResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModAvatarResponse> modAvatar(grpc.ServiceCall call, UserModAvatarRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      // Convert avatar to sink
      final avatarStream = () async* {
        yield request.avatar;
      }();
      // Save avatar to local file from request
      final avatarRecord = await FileProvider.saveFile(avatarStream);
      final user = await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          avatarRef: NullableStringFieldUpdateOperationsInput(
            set: avatarRecord.path,
          ),
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      return UserModAvatarResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModUnionIdResponse> modUnionId(grpc.ServiceCall call, UserModUnionIdRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          unionId: NullableStringFieldUpdateOperationsInput(
            set: request.unionId,
          ),
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      // TODO: query union id api and sendback name corresponding to union id
      return UserModUnionIdResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModTencentIdResponse> modTencentId(grpc.ServiceCall call, UserModTencentIdRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          tencentId: NullableStringFieldUpdateOperationsInput(
            set: request.tencentId,
          ),
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      // TODO: query tencent id api and sendback name corresponding to tencent id
      return UserModTencentIdResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserModAppleIdResponse> modAppleId(grpc.ServiceCall call, UserModAppleIdRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.update(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
        data: UserUpdateInput(
          appleId: NullableStringFieldUpdateOperationsInput(
            set: request.appleId,
          ),
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      // TODO: query apple id api and sendback name corresponding to apple id
      return UserModAppleIdResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserInfoResponse> info(grpc.ServiceCall call, UserInfoRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      final user = await PrismaProvider.client.user.findUnique(
        where: UserWhereUniqueInput(
          id: token.payload.userClaim,
        ),
      );
      if (user == null) {
        throw grpc.GrpcError.notFound('User not found');
      }
      // Fetch avatar from local file
      final avatar = await (await FileProvider.getFile(user.avatarRef))
        ?.reduce((previous, element) => previous..addAll(element));
      // TODO: query third party api and sendback name corresponding to union id, tencent id, apple id
      return UserInfoResponse(
        id: Int64(user.id.toInt()),
        name: user.name,
        email: user.email,
        phone: user.phone,
        avatar: avatar,
      );
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UserCancelResponse> cancel(grpc.ServiceCall call, UserCancelRequest request) async {
    try {
      final token = JsonWebToken.fromRaw(
        call.clientMetadata?['access_token'] ?? '',
        secret: ConfigProvider.jwt.authKey,
      );
      return UserCancelResponse();
    } on InvalidTokenException catch (e) {
      throw grpc.GrpcError.invalidArgument(e.toString());
    } on ExpiredTokenException catch (e) {
      throw grpc.GrpcError.unauthenticated(e.toString());
    } on grpc.GrpcError {
      rethrow;
    } catch (e) {
      LogProvider.logger.e(e);
      throw grpc.GrpcError.internal(e.toString());
    }
  }
}