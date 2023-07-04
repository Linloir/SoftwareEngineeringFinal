import 'dart:math';

import 'package:whatelse_server/src/generated/prisma/prisma_client.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/model/jwt.dart';
import 'package:whatelse_server/src/utils/storage/config_provider.dart';
import 'package:whatelse_server/src/utils/storage/prisma_provider.dart';
import 'package:whatelse_server/src/utils/storage/redis_provider.dart';

abstract class AuthProvider {
  static Future<User> authenticate(String userClaim, String password) async {
    // check userClaim to be email or phone
    final emailRegex = RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    User? user;
    if (emailRegex.hasMatch(userClaim)) {
      user = await PrismaProvider.client.user
        .findUnique(where: UserWhereUniqueInput(
          email: userClaim,
        ));
    } else {
      user = await PrismaProvider.client.user
        .findUnique(where: UserWhereUniqueInput(
          phone: userClaim,
        ));
    }
    if (user == null) {
      throw InvalidCredentialsException('User not found.');
    }
    if (user.password != password) {
      throw InvalidCredentialsException('Invalid password.');
    }
    return user;
  }

  static String genAccessToken(User user) {
    final header = JsonWebTokenHeader(algorithm: JsonWebTokenAlgorithm.fromConfig(ConfigProvider.jwt.alg));
    final payload = JsonWebTokenPayload(
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(ConfigProvider.jwt.accessExp),
      userClaim: user.id.toInt(),
    );
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: ConfigProvider.jwt.authKey,
    );
    return '$header.$payload.$signature';
  }

  static String genRefreshToken(User user) {
    final header = JsonWebTokenHeader(algorithm: JsonWebTokenAlgorithm.fromConfig(ConfigProvider.jwt.alg));
    final payload = JsonWebTokenPayload(
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(ConfigProvider.jwt.refreshExp),
      userClaim: user.id.toInt(),
    );
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: ConfigProvider.jwt.authKey,
    );
    return '$header.$payload.$signature';
  }

  static void verifyAccessToken(String token) {
    JsonWebToken.verifyRaw(token, secret: ConfigProvider.jwt.authKey);
  }

  static Future<void> verifyRefreshToken(String token) async {
    JsonWebToken.verifyRaw(token, secret: ConfigProvider.jwt.authKey);
    final redisClient = await RedisProvider.client;
    final result = await redisClient.get('revoked:$token');
    if (result != null) {
      throw InvalidTokenException('Refresh token has been revoked.');
    }
  }

  static String renewAccessToken(String token) {
    return JsonWebToken.renew(
      token,
      duration: ConfigProvider.jwt.accessExp,
      secret: ConfigProvider.jwt.authKey,
    ).toString();
  }

  static String renewRefreshToken(String token) {
    return JsonWebToken.renew(
      token,
      duration: ConfigProvider.jwt.refreshExp,
      secret: ConfigProvider.jwt.authKey,
    ).toString();
  }

  static Future<void> revokeRefreshToken(String token) async {
    try {
      final parsedToken = JsonWebToken.fromRaw(token, secret: ConfigProvider.jwt.authKey);
      final redisClient = await RedisProvider.client;
      final ttl = parsedToken.payload.expiresAt.difference(DateTime.now()).inSeconds;
      await redisClient.send_object(['SETEX', 'revoked:$token', ttl, 'byebye']);
    } on TokenException {
      // Ignored
    }
  }

  static Future<String> genVerifCode(String userClaim) async {
    String genCode() {
      // generate random 6-digit code and prevent duplicate digits
      final code = [];
      final set = <int>{};
      for (var i = 0; i < 6; i++) {
        int digit;
        do {
          digit = Random().nextInt(10);
        } while (set.contains(digit));
        set.add(digit);
        code.add(digit.toString());
      }
      return code.join();
    }

    var code = genCode();
    final redisCli = await RedisProvider.client;
    while(await redisCli.get('verifcode:$code') != null) {
      code = genCode();
    }
    await redisCli.send_object(['SETEX', 'verifcode:$code', ConfigProvider.redis.verifCodeTTL, userClaim]);
    return code;
  }
}